
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UILYZTStoryRecallModel = BaseClass("UILYZTStoryRecallModel", UIBaseModel)
local base = UIBaseModel

-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这

end

-- 打开
local function OnEnable(self)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这
	self.storyTitle="死亡诊断书"
	self.storyList={{title="1, “神秘来信”",story="佐野是一名推理小说作家。这天，他接到一家杂志社的约稿函，想请他写一部以“完整杀人事件”为主题的小说。佐野立刻想到了去年收到的一封信，那是一位医师寄给他的。\n\r医师在信中说，自己40多岁，和太太都在自家的诊所上班，他负责给病人看病，太太负责药房工作，而诊所是岳父大人出资开办的。3年前，他结识了一个年轻漂亮的女人，常常以出诊的名义，偷偷到女人住的公寓约会。有一天，女人突然央求医师说，她的隔壁邻居想请他帮个忙。医师早被这个女人迷得神魂颠倒，自然满口答应。\n\r很快，那个邻居来了，是个流里流气的男子。男子手里拿着一张纸，递给医师说，请他开一张死亡诊断书。医师断然拒绝，说这是违法的。男子冷笑道：“希望您放明白一点，我这不是央求您，我是抓着您的把柄的。我随时都可以写匿名信寄给您太太，您的诊所不是您的岳父大人开的吗？”\n\r医师最终屈服了，他在男子的要挟下，开了一张以心肌梗死为原因的死亡诊断书。之后，医师就和那个女人分了手。他之所以写这封信给佐野，是因为后来读到佐野写的一部名为《消失了的诊断书》的小说，里面的情节与他的这次经历有着惊人的相似之处，他不禁感触良多，提笔写信，借此抒发内心的愧疚感。\n\r当初佐野收到这封信时，并没有当回事，现在突然感到，这或许是一个绝佳的素材。医师开的那张死亡诊断书，最后究竟派了什么用场呢？\n\r佐野打算着手调查此事，他联络了报馆旧同事星谷，星谷十分乐于帮忙，而且以报馆记者的身份出面调查，也较为便利。两人来到医师会事务局，通过各项资料的排查，最终查到了一位名叫楠浦的医师，他的夫人名叫春江，两人的诊所是由妻子的娘家出资开业的。这一系列信息，与那封来信中所叙述的完全吻合。\n\r接着，佐野根据资料上登记的地址，找到了楠浦的诊所。他走进诊所，一位气质优雅的中年女性迎上前问：“您是要挂号吗？”佐野点点头，递上了病历本，心想，这应该就是春江夫人吧。很快，佐野被请进了诊疗室，楠浦医师问佐野哪里不舒服。佐野从口袋里掏出那封信，递了过去：“我是为这封信而来的……”\n\r楠浦接过信一看，顿时目瞪口呆，半晌才回过神来，紧张地朝药房那里看了看。恰在此时，春江夫人走了进来，指着佐野病历本上的名字，温柔地说：“冒昧得很，您是写推理小说的佐野先生吧？”佐野点了点头。春江夫人一脸崇拜地说：“我读过好几部您的大作呢，其中有一篇是描写一位医师被要挟的故事，对吗？”佐野大吃一惊，春江夫人所指的应该就是《消失了的诊断书》那部小说，这未免也太巧了吧？\n\r碍于春江夫人在场，佐野和楠浦很有默契地装作是病人和医师的样子，交谈了起来。待春江夫人返回药房，楠浦偷偷塞给佐野一张纸条，上面写着：7点，车站前咖啡馆见。\n\r"},
	{title="2, “扑朔迷离”",story="当晚7点，两人在咖啡馆碰头了。楠浦告诉佐野，他是在一家酒吧认识那个女人的，当时对方是酒吧的女招待，名叫樱井美保。自从发生那件事以后，因为害怕，楠浦就与樱井美保分手了，对方也并没有纠缠。不过，他内心仍对樱井美保有所留恋，后来还去她的公寓找过她，可惜她已经搬走了。楠浦最后说道：“如果有机会见到她，请您替我问候她一下。”之后，楠浦就告辞了。佐野找到星谷，将打探到的情况告知了对方，两人商量后决定，由星谷和他的手下到樱井美保原先住的公寓打探情况。\n\r第二天，佐野接到了星谷打来的电话，说事有蹊跷，让他赶紧到报社一趟。佐野匆匆赶到报社，星谷告诉他：“樱井美保死了，而开出死亡诊断书的正是楠浦大夫。”\n\r“什么？”佐野大吃一惊，他回想起昨晚楠浦临走前说的话：“如果有机会见到她，请您替我问候她一下。”这到底是怎么一回事呢？\n\r佐野想了想问：“那……写在诊断书上的是什么病名呢？”\n\r“心肌梗死！”星谷说，他先是去了一趟樱井美保以前住的公寓，找到了公寓管理员。公寓管理员帮忙查到了樱井美保的新住址，那是一所高档公寓，比原先的租金要贵很多。然而，当星谷来到那所高档公寓时，却被管理员告知，樱井美保已经死了。他又来到当地的区公所，果然查到了樱井美保的死亡申报文件。申报人是一个叫作小山静子的女人，这个女人有点奇怪，她在樱井美保死亡前的一个星期，把自己的户口迁到樱井美保那里，待樱井美保死亡后不久，她又把户口迁回原来的住址了。\n\r佐野听到这里，不禁皱起了眉：“此事大有蹊跷，依据《户籍法》规定，提出死亡申报的，必须是与死者同居的家人或其他同居人，小山静子这么做，是不是为了提出死亡申报？”\n\r星谷点点头说：“还不止这个，公寓管理员还说，他是看到遗体被搬出来，才知道樱井美保死了。当时，他虽然有点起疑，但小山静子曾在迁来户口后，特意送他礼物，请他多多关照，他也就没有多问。”\n\r佐野问：“那个小山静子是个怎么样的女人？”星谷说，她自称是开时装店的设计师，30岁出头的样子。\n\r两人正说着，星谷桌上的电话响了，星谷接完电话后对佐野说：“事情好像越来越有意思了。我手下调查到，小山静子和樱井美保在同一家酒吧工作，两人关系很好。小山静子说，她从来没有把户口迁到樱井美保的公寓里。而且小山静子今年才26岁，3年前不可能看上去有30多岁。”\n\r佐野若有所思道：“也就是说，有人冒充她的身份迁户口？”星谷点点头，表示同意。那这个女人究竟是谁呢？佐野不禁陷入了沉思。"},
	{title="3, “将计就计”",story="就在这时，星谷派出去追查樱井美保邻居的记者回来了，并带回了一个名叫山中的男子，他就是当年胁迫楠浦开死亡诊断书的男子。山中摆出一副玩世不恭的样子说：“你们报社何必大惊小怪呢？那不过是闹着玩的。”\n\r星谷谴责道：“你要挟楠浦医师开死亡诊断书，这怎么能说是闹着玩的？”\n\r山中不屑地说：“谁说我要挟他？我只是受人之托，演了这场戏而已。而托我的人正是那位大夫的妹妹。”他告诉大家，当时有个自称是楠浦医师妹妹的女人，找到他帮忙。那女人说，她哥哥自从迷恋上一个酒吧女之后，已无心经营诊所。长此以往，不但诊所会倒闭，家庭也会毁灭。那女人给了他十万块钱，让他演一场戏，连说的台词也是那女人设计的。\n\r佐野冷不丁问道：“那女人长什么样？那张死亡诊断书呢？”山中说，死亡诊断书当时就交给那个女人了，那女人30多岁，看起来事业有成，成熟优雅。\n\r佐野心中一动，立刻打电话到楠浦的诊所去，问楠浦有没有妹妹。楠浦回答说并没有妹妹。佐野微微一笑，说打算今晚去楠浦家拜访一下。\n\r当晚8点，佐野来到了楠浦医师的家，见到了楠浦和春江夫人。佐野开门见山地将调查结果告诉了他们，并说道：“这位女性究竟是谁？她自称是楠浦医师的妹妹，可实际上楠浦医师并没有妹妹，而且她还知道，这家诊所的创业资金是由太太的娘家拿出来的，知道这事的人应该不多，如此一想，答案不是很容易推测得到吗？”\n\r“您的意思是说……”楠浦愕然地转头望了一下春江夫人的脸。\n\r比起丈夫，春江夫人显得从容不迫多了，她淡淡地说：“佐野先生，从您的口吻来看，好像在说我就是这个女人，对吗？”\n\r佐野似笑非笑道：“如果我说，我认为的确如此呢？”\n\r“那您就得拿出证据来！”春江夫人微笑着说，“您说的这些只是推理小说的逻辑而已。我倒是可以给您讲一个故事：有个女人是一位开业医生的太太，她察觉到自己的丈夫假借出诊的名义经常与女人约会，并为之神魂颠倒。这位太太觉得，一定要让丈夫和那个女人切断关系，于是她委托私人侦探调查出那个女人住的公寓，然后花十万元收买那女人的隔壁邻居，让邻居以要挟的手段，逼迫她丈夫开出死亡诊断书。她了解丈夫的个性，知道此事足以让胆小的丈夫与那个女人分手。”\n\r佐野忍不住问：“后来呢？”\n\r春江夫人接着说：“只是，这位太太算错了一件事。那个女人拿到太太给她的一笔钱后，搬进了一幢高级公寓。可不久她就面临付不起房租的窘境，她开始以死亡诊断书这事，要挟这位太太。于是，这位太太想到了用这张死亡诊断书来对付那个女人的方法：她一方面调查那个女人和酒吧里哪位同事比较要好，另一方面研究《户籍法》，以女同事的身份，将户口迁入了女人的公寓。最后，她佯装带钱来到女人的公寓，伺机为那女人注射了毒药。这位太太常常在丈夫的诊所里为病人打针，此事对她来说轻而易举。好啦，我的故事到此为止，后来怎么样，您这位推理小说家自己去想象吧……”"}}

	self:OnRefresh()
end

-- 刷新全部数据
local function OnRefresh(self)


end

-- 监听
local function OnAddListener(self)
	base.OnAddListener(self)
	--添加监听

end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- 移除监听

end

-- 关闭
local function OnDisable(self)
	base.OnDisable(self)
	-- 清理成员变量
	
end

-- 销毁
local function OnDestroy(self)
	base.OnDestroy(self)
	-- 清理成员变量

end

UILYZTStoryRecallModel.OnCreate = OnCreate
UILYZTStoryRecallModel.OnEnable = OnEnable
UILYZTStoryRecallModel.OnRefresh = OnRefresh
UILYZTStoryRecallModel.OnAddListener = OnAddListener
UILYZTStoryRecallModel.OnRemoveListener = OnRemoveListener
UILYZTStoryRecallModel.OnDisable = OnDisable
UILYZTStoryRecallModel.OnDestroy = OnDestroy

return UILYZTStoryRecallModel