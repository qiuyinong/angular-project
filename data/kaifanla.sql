SET NAMES UTF8;
DROP DATABASE IF EXISTS kaifanla;
CREATE DATABASE kaifanla CHARSET=UTF8;
USE kaifanla;

CREATE TABLE dish(
    id VARCHAR(64),
    name VARCHAR(64),
    img VARCHAR(128),
    img_l VARCHAR(128),
    material VARCHAR(512),
    detail VARCHAR(2048),
    price INT(4),
    PRIMARY KEY(id)
);
INSERT INTO dish(id,name,img,img_l,material,detail,price)VALUES
('1','【酸甜开胃虾】','img/p0281.jpg','img/p0281-l.jpg','明虾、番茄酱、白糖、白醋、葱、姜、淀粉','这是一个吃货的季节，明虾鲜美的口感，配上番茄的美味，白糖的甜，葱姜等等的配合将这倒菜的味道推上了顶峰，这道菜你是值的拥有的',20),
('2','【桂香紫薯山药】','img/p2679.jpg','img/p2679-l.jpg','明虾、番茄酱、白糖、白醋、葱、姜、淀粉','这是一个吃货的季节，明虾鲜美的口感，配上番茄的美味，白糖的甜，葱姜等等的配合将这倒菜的味道推上了顶峰，这道菜你是值的拥有的',30),
('3','【小米椒爆炒小公鸡】','img/p8489.jpg','img/p8489-l.jpg','明虾、番茄酱、白糖、白醋、葱、姜、淀粉','这是一个吃货的季节，明虾鲜美的口感，配上番茄的美味，白糖的甜，葱姜等等的配合将这倒菜的味道推上了顶峰，这道菜你是值的拥有的',25),
('4','【口袋饼】','img/p7818.jpg','img/p7818-l.jpg','明虾、番茄酱、白糖、白醋、葱、姜、淀粉','这是一个吃货的季节，明虾鲜美的口感，配上番茄的美味，白糖的甜，葱姜等等的配合将这倒菜的味道推上了顶峰，这道菜你是值的拥有的',29),
('5','【橄榄油版酸奶蛋糕】','img/p9138.jpg','img/p9138-l.jpg','明虾、番茄酱、白糖、白醋、葱、姜、淀粉','这是一个吃货的季节，明虾鲜美的口感，配上番茄的美味，白糖的甜，葱姜等等的配合将这倒菜的味道推上了顶峰，这道菜你是值的拥有的',40),
('6','【蕃茄肉意大利面】','img/p4788.jpg','img/p4788-l.jpg','明虾、番茄酱、白糖、白醋、葱、姜、淀粉','这是一个吃货的季节，明虾鲜美的口感，配上番茄的美味，白糖的甜，葱姜等等的配合将这倒菜的味道推上了顶峰，这道菜你是值的拥有的',19),
('7','【自制放心油条】','img/p7933.jpg','img/p7933-l.jpg','明虾、番茄酱、白糖、白醋、葱、姜、淀粉','这是一个吃货的季节，明虾鲜美的口感，配上番茄的美味，白糖的甜，葱姜等等的配合将这倒菜的味道推上了顶峰，这道菜你是值的拥有的',25),
('8','【蒸饺】','img/p6611.jpg','img/p6611-l.jpg','明虾、番茄酱、白糖、白醋、葱、姜、淀粉','这是一个吃货的季节，明虾鲜美的口感，配上番茄的美味，白糖的甜，葱姜等等的配合将这倒菜的味道推上了顶峰，这道菜你是值的拥有的',20),
('9','【酸甜开胃虾】','img/p0281.jpg','img/p0281-l.jpg','明虾、番茄酱、白糖、白醋、葱、姜、淀粉','这是一个吃货的季节，明虾鲜美的口感，配上番茄的美味，白糖的甜，葱姜等等的配合将这倒菜的味道推上了顶峰，这道菜你是值的拥有的',10),
('10','【口袋饼】','img/p7818.jpg','img/p7818-l.jpg','明虾、番茄酱、白糖、白醋、葱、姜、淀粉','这是一个吃货的季节，明虾鲜美的口感，配上番茄的美味，白糖的甜，葱姜等等的配合将这倒菜的味道推上了顶峰，这道菜你是值的拥有的',27),
('11','【自制放心油条 】','img/p7933.jpg','img/p7933-l.jpg','明虾、番茄酱、白糖、白醋、葱、姜、淀粉','这是一个吃货的季节，明虾鲜美的口感，配上番茄的美味，白糖的甜，葱姜等等的配合将这倒菜的味道推上了顶峰，这道菜你是值的拥有的',34),
('12','【蒸饺】','img/p6611.jpg','img/p6611-l.jpg','明虾、番茄酱、白糖、白醋、葱、姜、淀粉','这是一个吃货的季节，明虾鲜美的口感，配上番茄的美味，白糖的甜，葱姜等等的配合将这倒菜的味道推上了顶峰，这道菜你是值的拥有的',41),
('13','【小米椒爆炒小公鸡】','img/p8489.jpg','img/p8489-l.jpg','明虾、番茄酱、白糖、白醋、葱、姜、淀粉','这是一个吃货的季节，明虾鲜美的口感，配上番茄的美味，白糖的甜，葱姜等等的配合将这倒菜的味道推上了顶峰，这道菜你是值的拥有的',20),
('14','【桂香紫薯山药】','img/p2679.jpg','img/p2679-l.jpg','明虾、番茄酱、白糖、白醋、葱、姜、淀粉','这是一个吃货的季节，明虾鲜美的口感，配上番茄的美味，白糖的甜，葱姜等等的配合将这倒菜的味道推上了顶峰，这道菜你是值的拥有的',22),
('15','【酸甜开胃虾】','img/p0281.jpg','img/p0281-l.jpg','明虾、番茄酱、白糖、白醋、葱、姜、淀粉','这是一个吃货的季节，明虾鲜美的口感，配上番茄的美味，白糖的甜，葱姜等等的配合将这倒菜的味道推上了顶峰，这道菜你是值的拥有的',21);
SELECT * FROM dish;