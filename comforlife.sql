/*
Navicat MySQL Data Transfer

Source Server         : comforlife
Source Server Version : 50537
Source Host           : localhost:3306
Source Database       : comforlife

Target Server Type    : MYSQL
Target Server Version : 50537
File Encoding         : 65001

Date: 2016-03-17 11:18:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `author` varchar(100) DEFAULT NULL,
  `summary` varchar(100) DEFAULT NULL,
  `descri` text,
  `time` datetime NOT NULL,
  `click` int(11) NOT NULL DEFAULT '0',
  `top` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2016031304 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('2016031301', '央行表态：购房“首付贷”违法 将对此进行清理整顿', 'sjy', '简介', '二届全国人大四次会议12日在北京梅地亚中心举行记者会，中国人民银行行长周小川，副行长易纲、潘功胜、范一飞等就“货币政策是否调整”“如何看待首付贷”“互联网金融监管”等热点问题回答了中外记者提问。\r\n\r\n保持稳健的货币政策\r\n\r\n没必要过度刺激\r\n\r\n针对货币政策会不会转向宽松的问题，周小川表示，中国将更多依靠内需，而不是出口实现GDP增长，因此不会倚重货币、汇率政策来实现经济增长目标。\r\n\r\n“从人民银行角度来看，经济增长在很大程度上和储蓄率有关系。”周小川说，“中国不会过度依靠出口来实现GDP增长，净出口在GDP增长中的贡献率也不再像以前那么大。在这种情况下，用货币、汇率政策刺激出口，对实现增长目标所能起到的作用并不大。”\r\n\r\n周小川明确表示，如果国际国内没有大的经济金融风波事件，我国将保持比较稳健的货币政策，不会采用过度的货币政策刺激来实现增长目标。\r\n\r\n七成库存在三四线城市\r\n\r\n房贷政策须因地施策\r\n\r\n在谈到房贷政策时，周小川表示，住房金融政策要考虑总量，全国平均看房地产市场仍面临较大去库存压力，去年库存量比前年增长超过15%；也要考虑到目前国内房价出现很大分化，一二线城市房价上涨较猛引发关注。\r\n\r\n潘功胜表示，当前中国房地产市场总量过剩、区域分化。目前7.2亿平方米的库存房中，70%分布在三四线城市，因此住房信贷政策必须与全国房地产的形势相匹配。央行将因地施策；加强市场自律，由商业银行自主决策；住房金融采取宏观审慎管理。\r\n\r\n跨境资本流动正常\r\n\r\n外汇市场继续回归理性\r\n\r\n在回应“大家是不是不用急着去买美元”问题时，周小川直言，“本来就没有必要急着去买美元。”外汇市场情绪有时候会有波动，但回归正常、回归理性、回归基本面的趋势会继续下去。\r\n\r\n针对公众关注的跨境资本流动问题，易纲表示，总体来说，资本的流入流出在预期范围之内。资本流出和流入中大部分都是正常的积累起来的。“在流入中，可能存在部分额外的资本流入，如果预期变了就要流出。”易纲表示，通过对外汇流出结构的分析，流出的大部分是“藏汇于民”。\r\n\r\n购房“首付贷”违法\r\n\r\n互联网金融协会将正式成立\r\n\r\n针对近期多地P2P平台推出“首付贷”问题，潘功胜表示，房地产中介机构、房地产开发企业自办的金融业务、或者与P2P平台合作开展的金融业务，没有相应资质属于违法经营，央行将对此进行清理整顿。\r\n\r\n潘功胜指出，房地产中介机构、房地产开发企业与P2P平台合作，所提供的“首付贷”产品不仅加大了居民购房的杠杆，削弱了宏观调控政策的有效性，增加了金融风险，同时也增加了房地产市场的风险。\r\n\r\n针对互联网监管问题，周小川表示，互联网金融发展很快，出现很多新的问题。去年出台的相关文件还没有真正落实，就又出现了新的挑战。中国互联网金融协会已经筹备了一段时间，在未来若干天会正式挂牌成立，以加强行业自律方面的管理。', '2016-03-13 10:00:27', '0', '1');
INSERT INTO `news` VALUES ('2016031302', '大观基金：未来十年房地产仍是重要投资渠道', 'pry', '新闻简介', '2016年春节刚过，上海、深圳等一线城市房地产交易中心排队过户场面火爆，二手房业主频频跳价，一线城市房价出现了脱缰式上涨的现象。然而，一些业内大佬对房地产行业的看法并没有市场所表现的那么乐观，房地产告别黄金年代，行业利润率持续下滑已是不争的事实。\r\n\r\n那么在存量房时代，房地产行业是否还有投资机会？上海大观股权投资基金有限公司（简称“大观基金”）副总裁孙启元在接受媒体采访时表示，房地产依然是重要投资渠道。\r\n\r\n寻找结构性机会\r\n\r\n大观基金是一家从事私募基金管理业务的专业机构，拥有私募股权投资、影视投资、并购基金、地产基金、夹层与信用投资、证券投资六大业务板块。其中，房地产业务占比在30%以上。\r\n\r\n一份来自清华大学的报告称，从2006年第一季度到2015年第四季度十年间，北京、上海、天津、深圳、成都、大连、武汉和西安八个典型城市房价总体上涨255.1%，年均上涨13.5%，房地产业财富聚集速度令人咋舌。\r\n\r\n孙启元认为，尽管近年来房地产行业利润持续下滑，但从大观基金调研结果来看，房地产仍然是高净值人群资产配置中的重要资产类别。“尽管房地产行业已经告别了黄金时代，但未来十年的房地产仍是大行业。私募基金作为管理财富的手段，其灵活度非常高，仍然可以从地产行业的复杂变局中寻找到结构性机会”。\r\n\r\n孙启元进一步解释说，对于万科、绿地等大型开发商而言，由于自身已经有较好的低成本融资渠道，地产基金对于其吸引力不大。但是，中小型开发商由于品牌、资金实力一般，是地产基金的主要需求者。这就要求地产基金具备极强的专业性，对房地产行业有深刻理解。而所谓结构性机会，是指在房产开发利润走低的情况下，通过专业性寻找房地产价值洼地。\r\n\r\n“大观基金选择项目，首先会从开发商角度考察，开发商团队以前做过什么项目、擅长做什么；第二，考察项目本身，项目的性质、板块等；第三，对还款来源的考察，即项目本身是否能够短期盈利，或者交易对手有无其他还款来源；第四，国家宏观经济和政策导向。”孙启元如此表示。\r\n\r\n例如，大观基金在浙江台州投资了一个房地产项目，该项目由某知名开发商进行开发。孙启元说，之所以能够获得优质项目，是因为大观基金不仅为该项目提供融资服务，而且还为其提供从开发到运营等全产业链的资源整合服务。\r\n\r\n孙启元还表示，大观基金也会去二三线城市寻求开发类项目并购机会，二三线城市因板块不同，依然存在可观的投资回报。\r\n\r\n盘活存量资产\r\n\r\n除了在开发类项目中寻找结构性机会，盘活存量资产是大观基金看到的另一个房地产投资机会。过去，房地产行业以土地增值为核心，然而在存量房时代，房地产行业将以经营创造价值为核心。目前，包括万达在内的开发商，纷纷开始注重向服务和运营进行转型。\r\n\r\n对此，孙启元表示，相比于住宅开发市场的投资回报率逐渐降低，综合体、商业地产、产业地产等持有型物业或将成为新兴的房地产投资机会。大观基金在一线城市收购存量资产，深度挖掘优质商业地产、住宅底商等，通过经营改造，让租金提升、资产增值。\r\n\r\n“中国地产的风险和矛盾集中在传统住宅市场，住宅以外细分领域机会依然巨大。由于物业费属于收益类资产，且稳定性非常高，因此能够给投资者带来极为可观的收益。”孙启元说道。\r\n\r\n另外，大观基金还会收购那些价值还未完全挖掘出来的存量资产项目，进行重新打包、梳理，最后通过其他机构收购溢价退出。\r\n\r\n孙启元表示，专业、过硬的资产管理能力是大观基金的基石。地产基金不能再像以往，通过简单地以高息贷方式赚取息差来获取收益，而是必须要在投融管退中体现专业性。', '2016-03-13 10:09:31', '0', '0');
INSERT INTO `news` VALUES ('2016031303', '成都房产买卖合同纠纷有变化 逾期交房办证占六成', 'cly', '新闻简介123', '天府早报记者从成都市中级人民法院发布的2015年成都两级法院审理的房地产纠纷案件情况获悉，引发商品房买卖合同纠纷的原因主要集中在逾期交房或办证、虚假宣传、房屋质量问题等3个方面。\r\n\r\n据成都中院民四庭副庭长廖方介绍，2008年，成都中院成立民事审判第四庭，专门审理房地产纠纷案件以来，2011年至2015年审理共1735件，纠纷类型涵盖虚假广告、小区配套、房屋质量、商品房交付、房产证办理、银行按揭办理等方面。\r\n\r\n此外，从案件审理情况来看，近几年，商品房买卖合同纠纷与过去相比具有新的变化：\r\n\r\n一是商品房买卖捆绑签订前期物业服务合同引发纠纷。在商品房买卖中，约定了前期物业服务，因物业服务引发的开发商与业主之间的纠纷不断显现。\r\n\r\n二是精装修房收房标准引发纠纷。过去商品房买卖合同的标的主要是毛坯房，近年来精装修房越来越多，交付标准以及质量合格标准相应发生变化，由此对违约的认定也发生变化。\r\n\r\n三是售后包租等新的销售方式引发纠纷。售后包租由于事先收取房款，经常出现租金难以支付的情况，容易引发群体性的拖欠租金纠纷。\r\n\r\n四是房价波动引发的购房人解除合同纠纷。房地产市场由卖方市场逐渐转入买方市场，商品房买卖合同领域“退房”现象增多，出现买房人单方违约、要求补差价、群体性要求退房等状况，而开发商要求继续履行合同并主张违约责任。\r\n\r\n另外，引发商品房买卖合同纠纷的原因主要集中在逾期交房或办证、虚假宣传、房屋质量问题等3个方面。其中，从2015年成都中院受理的492件商品房买卖纠纷案件中来看，逾期交房的案件有35件，逾期办证的案件有289件，占案件总数的65.85%。\r\n\r\n成都中院民四庭副庭长廖方提醒，居民在购买房屋时应仔细阅读合同约定内容，特别是自我权利方面，“不能在卖方的介绍下就草草签字。”另外，对于开发商的承诺和宣传要保留好证据，以便在出现纠纷时为自己维护权利。', '2016-03-13 10:10:08', '1', '0');

-- ----------------------------
-- Table structure for `rentattention`
-- ----------------------------
DROP TABLE IF EXISTS `rentattention`;
CREATE TABLE `rentattention` (
  `ID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `homeID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rentattention
-- ----------------------------
INSERT INTO `rentattention` VALUES ('1', '1', '100');
INSERT INTO `rentattention` VALUES ('2', '1', '101');
INSERT INTO `rentattention` VALUES ('3', '2', '102');

-- ----------------------------
-- Table structure for `renthome`
-- ----------------------------
DROP TABLE IF EXISTS `renthome`;
CREATE TABLE `renthome` (
  `homeID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `homeType` int(11) NOT NULL,
  `rentType` int(11) NOT NULL,
  `conName` varchar(100) NOT NULL,
  `homeArea` varchar(100) NOT NULL,
  `busiArea` varchar(100) NOT NULL,
  `room` int(11) NOT NULL,
  `hall` int(11) NOT NULL,
  `toilet` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `fitment` int(11) NOT NULL,
  `direction` int(11) DEFAULT NULL,
  `cert` blob,
  `floor` int(11) DEFAULT NULL,
  `floorNum` int(11) DEFAULT NULL,
  `buildNum` int(11) DEFAULT NULL,
  `unitNum` int(11) DEFAULT NULL,
  `roomNum` int(11) DEFAULT NULL,
  `rentNum` int(11) DEFAULT NULL,
  `depositType` int(11) DEFAULT NULL,
  `support` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `descri` text,
  `checkInTime` date DEFAULT NULL,
  `check` int(11) DEFAULT '0',
  `attention` int(11) DEFAULT '0',
  `latlng` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`homeID`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of renthome
-- ----------------------------
INSERT INTO `renthome` VALUES ('101', '3', '3', '2', '石油华宇苑', '双流', '双流华府大道石油华宇苑', '1', '1', '1', '50', '2', '4', null, '10', '5', '5', '1', '4', '1000', '2', '3', '双流华府大道石油华宇苑  ', '双流华府大道石油华宇苑comforlife', '2016-03-06', '1', '1', '30.67，104.06');
INSERT INTO `renthome` VALUES ('102', '3', '2', '1', '南阳盛世', '双流', '双流华阳中学南阳盛世', '2', '1', '1', '97', '2', '3', null, '18', '15', '2', '5', '3', '2000', '2', '3', '双流华阳中学南阳盛世', '房子在南阳盛世小区,环境优美,绿化充足,\r\n位于双流-华阳中学 广都上街138号,入住即与精英为邻;\r\n该房2室,2厅,1卫户型,\r\n房间配套有床,宽带,电视,冰箱,洗衣机,空调,热水器,\r\n交通便利,附近的地铁1号线南阳盛世 1路、3路、807路、813路、801路、815路、805路、819路、823路、817路、501路 抵达站点：南阳盛世站，距离项目现场10米,\r\n小区周边配套设施齐全,大学：双流县老年大学、四川广播电视大学双流校、西南民族大学双流校区中小学：华阳实验小学、华阳中学、华阳一中、西寺小学幼儿园：华阳幼儿园、双流县机关幼儿园、小天使幼儿园、东升镇骆家祠幼儿园商场：缤纷广场、摩尔新世纪购物广场、红旗超市、家乐福超市、圣伦百货超市邮局：双流县邮政局、东升街邮政所、双流县棠中路邮政所银行：中国银行、中国农业银行、中国建设银行、中国工商银行、中国交通银行、农商银行医院：双流;', '2016-03-13', '1', '0', '30.67，104.06');
INSERT INTO `renthome` VALUES ('103', '1', '1', '1', '时代尊城', '青羊', '东坡路399号', '3', '1', '1', '120', '1', '1', null, '10', '16', '3', '3', '1', '9000', '1', '1', '租房啦青羊内光华时代尊城 ', '联系我时请说comforlife', '2016-03-12', '1', '5', '30.67，104.06');
INSERT INTO `renthome` VALUES ('104', '4', '2', '3', '恒兴香江岸', '金牛', '王贾大道22号', '3', '1', '1', '91', '3', '1', null, '18', '11', '1', '4', '9', '2000', '1', '2', '\r\n本人非中介，可看房。', '\r\n本人非中介，可看房。\r\n房子在恒兴香江岸小区,环境优美,绿化充足,\r\n位于金牛-五块石 王贾大道22号,入住即与精英为邻;\r\n该房3室,1厅,1卫户型,\r\n房间配套有床,宽带,电视,冰箱,空调,热水器,\r\n交通便利,附近的3路、9路、24路、39路、63路、73路、87路、108路、337路、401路 、402路等公交3路、9路、24路、39路、63路、73路、87路、108路、337路、401路 、402路等公交,\r\n小区周边配套设施齐全,大学：西南交大中小学：王贾桥小学、双水碾小学、成都四十四中幼儿园：恒兴香江岸幼儿园商场： 王贾农贸综合市场、五块石商贸圈。龙湖北城天街邮局：洞子口邮局银行：农业银行、中国银行医院：成华区红十字医院其他：沙河新绿水碾公园、沙河湿地公园、动物园、北郊公园;', '2016-02-19', '0', '0', '30.67，104.0');
INSERT INTO `renthome` VALUES ('105', '8', '2', '1', '双桥子', '成华', ' 五冶宿舍', '1', '1', '1', '22', '1', '1', null, '7', '7', '1', '1', '6', '500', '1', '1', '合租啦', '1、公交地铁出行方便，出小区大门2即可到玉双路地铁，公交从东到西从南到北的都有，如果你要坐高架出行，也只需花10时间就OK。\r\n ；\r\n2、居家生活方便，离菜市100米，离祥和里877米（在家定位的高德），离339和华润正好都是2站地，走路也就1.5KM左右。\r\n3、如果你喜欢锻炼，2就能到新华公园，地跑烂了都不会有人找你陪，而且里面也有健身设施。\r\n4、如果你喜欢游戏，100兆光纤、100兆光纤、100兆光纤、（这条很重要，加个粗）让你远离“呆卡萌”，而且房主也喜欢游戏（剑三、LOL），说不定还能组个队。\r\n ；\r\n5、房屋里家里是全齐的，主卧里有单独的空调，地板是木地板，而且还有个楼顶小花园，去年还在上面做过一次烧烤。\r\n ；\r\n租客要求：\r\n ；\r\n1、不要太懒了，房主虽然也有点懒，但喜欢房屋整洁。\r\n ；\r\n2、如果是妹子，如果你会做饭，如果你愿意教房主，那么房租可以谈。\r\n ；\r\n3、情侣就算了哈，这房子隔音不算太好。而且我睡得晚，免得你们压抑。', '2016-03-11', '1', '0', '30.67，104.0');

-- ----------------------------
-- Table structure for `rentpic`
-- ----------------------------
DROP TABLE IF EXISTS `rentpic`;
CREATE TABLE `rentpic` (
  `picID` int(11) NOT NULL AUTO_INCREMENT,
  `homeID` int(11) NOT NULL,
  `pic` blob,
  PRIMARY KEY (`picID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rentpic
-- ----------------------------
INSERT INTO `rentpic` VALUES ('1', '101', null);
INSERT INTO `rentpic` VALUES ('2', '102', null);
INSERT INTO `rentpic` VALUES ('3', '103', null);

-- ----------------------------
-- Table structure for `saleattention`
-- ----------------------------
DROP TABLE IF EXISTS `saleattention`;
CREATE TABLE `saleattention` (
  `ID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `homeID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of saleattention
-- ----------------------------
INSERT INTO `saleattention` VALUES ('4', '4', '104');
INSERT INTO `saleattention` VALUES ('5', '5', '105');
INSERT INTO `saleattention` VALUES ('6', '6', '106');

-- ----------------------------
-- Table structure for `salehome`
-- ----------------------------
DROP TABLE IF EXISTS `salehome`;
CREATE TABLE `salehome` (
  `homeID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) DEFAULT NULL,
  `buildNum` int(11) DEFAULT NULL,
  `unitNum` int(11) DEFAULT NULL,
  `roomNum` int(11) DEFAULT NULL,
  `room` int(11) DEFAULT NULL,
  `hall` int(11) DEFAULT NULL,
  `toilet` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `homeArea` varchar(100) DEFAULT NULL,
  `busiArea` varchar(100) DEFAULT NULL,
  `conName` varchar(100) DEFAULT NULL,
  `fitment` int(11) DEFAULT NULL,
  `unitPrice` int(11) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  `totalFloor` int(11) DEFAULT NULL,
  `direction` int(11) DEFAULT NULL,
  `support` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `descri` varchar(100) DEFAULT NULL,
  `check` int(11) DEFAULT '0',
  `attention` int(11) DEFAULT '0',
  `latlng` varchar(100) DEFAULT NULL,
  `FS` int(2) DEFAULT NULL,
  `checkInTime` date DEFAULT NULL,
  PRIMARY KEY (`homeID`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of salehome
-- ----------------------------
INSERT INTO `salehome` VALUES ('103', '7', '3', '6', '1', '2', '1', '1', '104', '成华', ' 成华蜀都大道延线', '信和御龙山', '2', '9300', '9', '18', '2', '4', '信和御龙山新品排号交8000总价惠3%', '项目项目位于蜀都大道延线迎晖路与塔山路交汇处，西面紧靠沙河，南临塔子山公园，交通便利，配套5星级酒店，大型商场及高端会所，生活配套完善。', '0', '0', '30.67,104.06', '0', '2016-03-02');
INSERT INTO `salehome` VALUES ('104', '4', '5', '3', '6', '2', '1', '1', '70', '双流', '川大路', '江安花园', '1', '7000', '4', '8', '5', '1', '石佳影推荐', '买房即可获得石佳影亲笔签名', '1', '0', '30.67,104.06', '0', '2016-03-17');
INSERT INTO `salehome` VALUES ('105', '5', '2', '2', '7', '2', '1', '1', '110', '双流', '川大路', '江安花园', '4', '8000', '7', '8', '3', '2', '石博士代言', '买房即可获得石佳影亲笔签名', '1', '0', '30.67,104.06', '1', '2016-03-10');
INSERT INTO `salehome` VALUES ('106', '6', '3', '1', '5', '3', '2', '2', '200', '双流', '川大路', '江安花园', '5', '10000', '5', '10', '1', '1', '尽请期待', '买房即可获得石佳影签名照', '1', '4', '30.67,104.06', '1', '2016-03-06');
INSERT INTO `salehome` VALUES ('107', '8', '4', '4', '7', '4', '2', '2', '300', ' 高新区', '会龙大道', '中德英伦世邦', '3', '12000', '8', '10', '4', '1', '中德英伦联邦少量顶跃房源清盘中', '交1万惠4%，全款优惠5%，按揭优惠3%，现场砸金蛋可获5000-8888元房款抵用券。项目支持半年首付分期。', '1', '0', '30.67,104.06', '1', '2016-03-04');

-- ----------------------------
-- Table structure for `salepic`
-- ----------------------------
DROP TABLE IF EXISTS `salepic`;
CREATE TABLE `salepic` (
  `picID` int(11) NOT NULL AUTO_INCREMENT,
  `homeID` int(11) DEFAULT NULL,
  `pic` blob,
  PRIMARY KEY (`picID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of salepic
-- ----------------------------
INSERT INTO `salepic` VALUES ('4', '104', null);
INSERT INTO `salepic` VALUES ('5', '105', null);
INSERT INTO `salepic` VALUES ('6', '106', null);

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '123@123', '123', '文继飞', '111111');
INSERT INTO `user` VALUES ('2', '112312124@qq.com', '1234', '梁挺', '11111');
INSERT INTO `user` VALUES ('3', 'zxc@2', '12345', '刘星池', '11111');
INSERT INTO `user` VALUES ('4', '潘悠然', '123456', '潘悠然', '111111');
INSERT INTO `user` VALUES ('5', '石佳影', '1234567', '石佳影', '11111');
INSERT INTO `user` VALUES ('6', '崔乐阳', '12', '崔乐阳', '333333');
INSERT INTO `user` VALUES ('7', 'pry', '321', 'pry', '11111');
INSERT INTO `user` VALUES ('8', 'sjy', '4321', 'sjy', '11111');
INSERT INTO `user` VALUES ('9', 'lt', '54321', 'lt', '111111111');
