local Class = {} -- La table contiendra l'ensemble des méthodes, metamethodes et variables constituant la classe désirée.

--Set a metamethod to this class: __index. points back to Itself. En gros c'est un point de chute en cas de recherche non frucutueuse d'une clé (index) spécifique.
Class.__index = Class

-- defaul implementation. Nous permettra de créer de nouvelles classes !
function Class:new() 
    --print("New() de la classe \"Class\" a été appelé") 
end

-- ********* CREE UNE NOUVELLE CLASSE à partir de "CLASS". On HERITE de la structure et du fctnement de Class, pour faire de la POO.  ********
function Class:derive(type)
    assert(class_type ~= nil, "parameter class_type must not be nil!")
    assert(type(class_type) == "string", "parameter class_type class must be string!")
    local cls = {}
    cls["__call"] = Class.__call -- (en gros, mais à approfondir je pense...)permet de faire des appels chainés..
    cls.type = type -- en gros class.type = type...
    cls.__index = cls --Set the metamethod INDEX to this class. __index is used to points back to Itself.
    cls.super = self -- Fct permettant de savoir à partir de quelle classe la NOUVELLE classe hérite.. la fct sera appelée par quelque chose ailleurs, donc on pourra remonter la boucle
    setmetatable(cls, self) -- permet l'héritage (cls = la classe qui reçoit, self  = la classe qui donne) Donc, la classe fille ira piocher dans la classe parente si elle trouve pas une info. C'est ça une métatable, une classe parente.
    return cls --return le nouveau type de classe ainsi crée, ainsi que tout ses paramétrages d'héritages, methodes, vars, etc
end

--Check if the instance is a sub-class of the given type
function Class:is(class)
    assert(class ~= nil, "parameter class must not be nil!")
    assert(type(class) == "table", "parameter class must be of Type Class!")
    local mt = getmetatable(self)
    while mt do
        if mt == class then return true end
        mt = getmetatable(mt)
    end
    return false
end

function Class:is_type(class_type)
    assert(class_type ~= nil, "parameter class_type must not be nil!")
    assert(type(class_type) == "string", "parameter class_type class must be string!")
    local base = self
    while base do
        if base.type == class_type then return true end
        base = base.super
    end
    return false
end

-- ******** INSTANCIE un objet
-- la notation '...' signbifie "ANY PARAMETERS"
function Class:__call(...)
    local inst = setmetatable({}, self)
    inst:new(...)
    return inst
end

--Un getter pour connaitre le type de la classe
function Class:get_type()
    return self.type
end

local Player = Class:derive("Player")


return Class