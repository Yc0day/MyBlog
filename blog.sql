/*
Navicat SQL Server Data Transfer

Source Server         : ������sql server
Source Server Version : 105000
Source Host           : bds24646460.my3w.com:1433
Source Database       : bds24646460_db
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 105000
File Encoding         : 65001

Date: 2017-12-01 16:05:20
*/


-- ----------------------------
-- Table structure for admin
-- ----------------------------
GO
CREATE TABLE [dbo].[admin] (
[id] int NOT NULL IDENTITY(1,1) ,
[username] nvarchar(50) NOT NULL ,
[password] nvarchar(50) NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[admin]', RESEED, 19)
GO

-- ----------------------------
-- Records of admin
-- ----------------------------
SET IDENTITY_INSERT [dbo].[admin] ON
GO
INSERT INTO [dbo].[admin] ([id], [username], [password]) VALUES (N'1', N'admin', N'admin')
GO
GO
INSERT INTO [dbo].[admin] ([id], [username], [password]) VALUES (N'16', N'123456', N'123456')
GO
GO
INSERT INTO [dbo].[admin] ([id], [username], [password]) VALUES (N'19', N'����', N'zy19961114')
GO
GO
SET IDENTITY_INSERT [dbo].[admin] OFF
GO

-- ----------------------------
-- Table structure for article
-- ----------------------------
GO
CREATE TABLE [dbo].[article] (
[id] int NOT NULL IDENTITY(1,1) ,
[title] nvarchar(60) NOT NULL ,
[desc] nvarchar(255) NULL ,
[content] text NOT NULL ,
[cateid] int NOT NULL ,
[time] datetime NOT NULL ,
[creator] int NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[article]', RESEED, 30)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'article', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'����'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'article'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'����'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'article'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'article', 
'COLUMN', N'desc')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'����'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'article'
, @level2type = 'COLUMN', @level2name = N'desc'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'����'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'article'
, @level2type = 'COLUMN', @level2name = N'desc'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'article', 
'COLUMN', N'content')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'��������'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'article'
, @level2type = 'COLUMN', @level2name = N'content'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'��������'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'article'
, @level2type = 'COLUMN', @level2name = N'content'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'article', 
'COLUMN', N'cateid')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'��������id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'article'
, @level2type = 'COLUMN', @level2name = N'cateid'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'��������id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'article'
, @level2type = 'COLUMN', @level2name = N'cateid'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'article', 
'COLUMN', N'time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'����ʱ��'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'article'
, @level2type = 'COLUMN', @level2name = N'time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'����ʱ��'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'article'
, @level2type = 'COLUMN', @level2name = N'time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'article', 
'COLUMN', N'creator')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'��������'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'article'
, @level2type = 'COLUMN', @level2name = N'creator'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'��������'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'article'
, @level2type = 'COLUMN', @level2name = N'creator'
GO

-- ----------------------------
-- Records of article
-- ----------------------------
SET IDENTITY_INSERT [dbo].[article] ON
GO
INSERT INTO [dbo].[article] ([id], [title], [desc], [content], [cateid], [time], [creator]) VALUES (N'4', N'δ������������˵���շ���', N'����Ŀ��һ�����껨���������ⳡ���꣬�������ҿ���һ��������Եǳ������������ɢ��  ʱ����ĵ���������һ����һ�����Ŀ�ڡ�', N'<p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 37px; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify;"><span style="font-family: ����; font-size: 19px;">�ҵ���������һ�죬�Ҷ԰뱲�������ڴ��������̲�ĸ�ĸ˵�������Ϸ��ҵ��˵Ĺ���������羰��������ɽ��ˮ�������������ȶ��ˣ��ͽ�����ȥ�����Ϲ��ķ�⡣��������һ����һ�꣬��ĸ��Ȼ�ڱ�����Ƭ�����������ϣ���δ̤��������������Ƭ�������ĵ�������</span><br/>&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 37px; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify;"><span style="font-family: ����; font-size: 19px;">������ϰ���Ƴ�һЩ���飬˵ʱ�������죬������������ȴ���ˣ��������ġ�����������������Զ������������ʵ���һ�졣</span><br/>&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 37px; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify;"><span style="font-family: ����; font-size: 19px;">�ϴ���Ϊ����ͻȻ��������ĸ���½��ϻغ����ϼң���Ҳ��ٻ�ȥ��ɥ�¹���һ��żȻ�Ľ�̸�У�����ĸ�ײ���Ѫ˿ȴ�Դ��ڴ��������ң�ʲôʱ���ܴ����͸���ȥ�����Ϸ�������ɽˮ����֪����ʲôʱ���������һ���Ȼ������һ˲�䣬���������ᡢ�������εĵ�����ͷ���������һ���ŵ�����˸�ĸ���������õ��ڴ�������ȴ�ܸо�δ�����кܳ�����������Ǻܾã��ܴ�����ȥ���ࡢ���õĵط��������ٴ�̧ͷ����ע�⵽ĸ��˫�ް׷��������࣬�����������ԭ���������Ѿ����ˣ�û����ô�����շ����ˡ�</span><br/>&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 37px; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify;"><span style="font-family: ����; font-size: 19px;">��������Т���޼���д������һЩ���飬�����������ʱ���޷����ã������Ƕ��õ�ʱ���Ѳ������ᣬ������Щ���������ֲ�����Щ���������ֲ��������ǰѸ�ĸ��Т�ĵȵ����շ�������Ǯʱ�䶼�������һ�죬�Ϳ��ܻ������������粻ֹ�����������ײ����ı��硣</span><br/>&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify;"><span style="font-family: ����; font-size: 19px;">&nbsp; &nbsp;���������£�������Т����Ҫ��Ҫ�����ڿ�ʼ���¸�������ʵ�ĽŲ�����ȥ����ʧ�ܺ���˵ĳ�Ц�����ӣ��������Т�ģ��ڸ�ĸ��������������Т�������ϣ�һ�е�ֵ��ץס���еĹ����ɣ�ȥ׷�������˵����룬ȥ�����΢�������Т�ģ�</span><br/>&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: ����; font-size: 19px;">&nbsp;&nbsp;&nbsp;&nbsp;�������շ������������޲��ɼ����£�Ī�������д�־��ȴ������ʱ�⣬���ڵ���Ī���ڴ��ҹ������ͣ��½�������ȥ���ݾ�Т���������н���ľ��һ����ʵ��������ʱ��û�����͸�����ഺ���٣���ĺ������Ψ��һ���̾��</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p></p><p><br/></p>', N'1', N'2017-12-01 11:59:52.377', N'1')
GO
GO
INSERT INTO [dbo].[article] ([id], [title], [desc], [content], [cateid], [time], [creator]) VALUES (N'5', N'������ɢ������������ǣ��', N'��̨��ҹ���£�������һ����̨���������������������������һ��ɣ��ɣ����µ�ǳ��Ũ�صĵ�����', N'<p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">�������ƺ��������һ�{���������˼�İ��µ�ӡ��˼���е�ӡ�ߣ�������ԡ��������������Ӱ����������Ժ���ӡ���ϸڡ���˼����Ⱦ��Ҷ�����Ż��껹û�п��ţ����������������ĵ����߽��򻨴��У����Ż��㣬Ʈ�������е�ζ�����ǻ��㣬������˼��ʱ��������</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">�����У� �����Ű�����档�������˫�����������˵�Ŀ�⡣�����ţ�����Զ����Զ��������Ĺ��硣���������ͯ�꣬����ĳɳ�������Ļ��֣�Ҳ��������ˡ��Ұ������������һ����ͨ�İ�ֽ���ϣ���ֽȴ��Ϊ�����ͼ����Ѱ��������ص���Ĺ��磬�Ҿͳ��˹�������ο͡��ǻ�����̦·�е�ʯ����---</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">��ϼ������һ�ƺ������ɽ�ϣ��ñʺ�ֽ�������ģ����Ϊ�ε�׺������΢Цʱ�ľ��ѡ�Զ������������µ��ഺ��������Ϧ��ģ���ںڰ������ϰ���û�������ഺ���÷ŵ��������þ��ȼ������롣��������������ǰ��ʱ�⣬ʣ�µĲ����ǻ��䣬���ǻ��������ˣ���ǳ��û��ɳ̲�ĺ����ϡ������ŷ磬�������꣬����������ң�Ʈȥû������ķ���</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">��˵�����ſ������ţ������ɰٴ������ɽ��ӡ����ǰٴ���ˮ�����嵭���󺣵�ˮ��ɬ���̡���˭֪�����ǿ��̵�ζ�����������뿪�ٴ������ᣬ����˵���Լ��Ŀࡣ�����Ƕκ������������˺����ѡ�</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">��������ͬ�Ŀ��������ˣ�����ң���ɼ��ľ��롣���벢û�иı����ң��������Ҹı�����������Ų�ͬ���ˣ������Ų�ͬ���£��ڳ��еĽ��䡣�񾲵�˼������������ͬ��������Ҷ�����һ�ݰ����������ʧ����ͬ�����á�</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">ʮ��·���޺�ƣ�����������ɫ��û�й����ͣ����Ҳû�й���Ļ��֡������õ�����Ҫ�ľ�����ݼ��ء����������õ����ǣ�������һֱ�ڻ�����Ⱥ�Ҫ֪���������޷��һ�ʧȥ���ഺ�������ܰ��ഺ���ڻ��������ɡ�</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">ʱ���ûͣ�������������ã����ܴ���ι̵ĳǱ����ù�ȥ��ʧ�ڷ��ͣ�������Ȼ���쿪˫�֣���չ���������ʱ�������ҡ�����أ������Σ�����š��ñ�������ˮ�������ĺ�ˮ���ջ������Լ��Ĺ�ʵ��ֻҪ�Ŀ��ţ�����Ͳ�����ֱ��ˣ�ֻҪ�ĳ������ɿݵ�ɳĮ����һ�����š�����û������ľ��ȣ����������ڻ�����ͺá�</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">�����������ǵ������£��Ѿ�����˳����еĵرꡣ�������ǵĲٳ�Ҳ��������еĹ㳡���������Ȫ�����ǳ������ŵĵط������ڣ��������ϵ����˴�󷽷���վ�����￴���ǵ����Բ����ഺ��������ǣ���֣������ܻ�����Ű��˵��ֹ���Ϧ���µ����á�</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">վ��û�л�������ʯ���ϣ��������ǵĻ��䵭������ʧ��ҹĻ�У������ŷ磬ȥ��Զ��������ϡ�����ļ�����񶼱��һ����������׿յ��İ�ֽ�ϡ���������û�иı䣬ֻ���ǿյ���������Ҫ��ȥ���ϡ�Ϊʲô������ʱ���������˴����￪ʼ����ͬ�������˴��������һ������Ȼ������ŷ磬ȥ��Զ�������е��㣬����������������</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp; &nbsp; ǳ���Ļ������׵������������������еĲ��ǻ��䣬���������ʱ�����ˡ�վ����ʯ����ǳ���������������еĳ�ǽ����ǽ���������ǵľ��룬ȴû�и������ǵĺ������Ұ�˼���������꣬����������塣ͬʱ��Ҳ����Ļ�������ҵ�ǽ�档��˯ǰ��������������ҵ������ȳ��еĸ�ݣ�����֮�䲢û��̫Զ�ľ��롣</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">�Ҹ�����Ӧ������������Ϣ���ߵ�ҲӦ��������Ϣ�����䣬����һ����Ļ�����û�����ҹ��������ͬ�¹�һ����˯��<br/>&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">QQ��2889244919</p><p><br/></p>', N'10', N'2017-11-18 18:06:34.223', N'1')
GO
GO
INSERT INTO [dbo].[article] ([id], [title], [desc], [content], [cateid], [time], [creator]) VALUES (N'6', N'������������㷨', N'������������ȥ�ĸ�ǳ�������ǳ���ټ��ķֱ��������ǻ����ĺۼ�������ǧ�ꡣ���ף�', N'<p>&nbsp; 
 &nbsp; &nbsp;</p><pre class="brush:cpp;toolbar:false">//������������㷨�����ع����жԽڵ����Ϳɫ��ָ���ڵ��״̬��&nbsp;&nbsp;
//ÿ���ڵ�ĳ�ʼ��ɫ���ǰ�ɫ�ģ��ڽڵ㱻���ֺ��ɻ�ɫ�ģ������ڽ�����ɨ����ɺ��Ϊ��ɫ�ġ�&nbsp;&nbsp;
//�÷�����֤ÿ���ڵ����һ������������г��֣���ˣ����е�������������ǲ��ཻ�ġ�&nbsp;&nbsp;&nbsp;
//����������ص���һ�����ʣ��ڵ�ķ���ʱ������ʱ�������ν�����Ż��Ľṹ&nbsp;&nbsp;&nbsp;
#include&nbsp;&lt;iostream&gt;&nbsp;&nbsp;
&nbsp;#include&nbsp;&lt;queue&gt;&nbsp;&nbsp;
&nbsp;#include&nbsp;&lt;stack&gt;&nbsp;&nbsp;
&nbsp;#include&nbsp;&lt;vector&gt;&nbsp;&nbsp;
&nbsp;#include&nbsp;&lt;climits&gt;&nbsp;&nbsp;&nbsp;
&nbsp;using&nbsp;namespace&nbsp;std;&nbsp;&nbsp;
&nbsp;//����dfs��ÿ���ڵ��ϸ���һ��ʱ�����ÿ���ڵ�v������ʱ�����&nbsp;&nbsp;
&nbsp;//��һ��ʱ���v.d��¼�ڵ�v��һ�α����ֵ�ʱ�䣨ͼ�ϻ�ɫ��ʱ�򣩣��ڶ���ʱ���v.f��¼����������ɶ�v���ڽ������ɨ��ʱ�䣨ͼ�Ϻ�ɫ��ʱ��&nbsp;&nbsp;&nbsp;
&nbsp;struct&nbsp;ListNode{&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;int&nbsp;val;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;int&nbsp;color;//white=0,gray=1,black=2;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;int&nbsp;d;//���ֽڵ��ʱ��&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;int&nbsp;f;//��ɶԽڵ㴦���ʱ��&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;vector&lt;ListNode*&gt;&nbsp;next;//�洢���е��ڽӽڵ�&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;ListNode*&nbsp;pre;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;ListNode(int&nbsp;x):color(0),val(x),d(0),f(0),pre(NULL){&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;
&nbsp;};&nbsp;&nbsp;&nbsp;
void&nbsp;insert(ListNode*&nbsp;L,ListNode*&nbsp;n)&nbsp;&nbsp;
{&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;L-&gt;next.push_back(n);&nbsp;&nbsp;
}&nbsp;&nbsp;
void&nbsp;show(ListNode*&nbsp;L)//��ʾ�ýڵ�������ڽӽڵ�&nbsp;&nbsp;&nbsp;
{&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;int&nbsp;n=L-&gt;next.size();&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;for(int&nbsp;i=0;i&lt;n;i++)&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;cout&lt;&lt;(L-&gt;next)[i]-&gt;val&lt;&lt;&quot;&nbsp;&quot;;&nbsp;&nbsp;
}&nbsp;&nbsp;
int&nbsp;time=0;//����time��һ��ȫ�ֱ�������������ʱ���&nbsp;&nbsp;
void&nbsp;dfs_visit(ListNode*&nbsp;a[],int&nbsp;n,ListNode*&nbsp;u)&nbsp;&nbsp;
{&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;time++;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;u-&gt;d=time;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;u-&gt;color=1;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;int&nbsp;n1=u-&gt;next.size();&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;for(int&nbsp;i=0;i&lt;n1;i++)&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ListNode*&nbsp;v=(u-&gt;next)[i];&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(v-&gt;color==0)&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;v-&gt;pre=u;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dfs_visit(a,n,v);&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;u-&gt;color=2;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;time++;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;u-&gt;f=time;&nbsp;&nbsp;
&nbsp;&nbsp;
&nbsp;&nbsp;
}&nbsp;&nbsp;
void&nbsp;dfs(ListNode*&nbsp;a[],int&nbsp;n)&nbsp;&nbsp;&nbsp;
{&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;for(int&nbsp;i=0;i&lt;n;i++)&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ListNode*&nbsp;u=a[i];&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(u-&gt;color==0)&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dfs_visit(a,n,u);&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;
}&nbsp;&nbsp;
&nbsp;&nbsp;
&nbsp;&nbsp;
int&nbsp;main()&nbsp;&nbsp;
{&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;ListNode*&nbsp;a[6];&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;int&nbsp;b[6][6]={{2,4},{5},{5,6},{2},{4},{6}};&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;for(int&nbsp;i=0;i&lt;6;i++)&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;a[i]=new&nbsp;ListNode(i+1);&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;for(int&nbsp;j=0;j&lt;6;j++)&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;for(int&nbsp;i=0;i&lt;6;i++)&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;if(b[j][i])&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;a[j]-&gt;next.push_back(a[b[j][i]-1]);&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;//show(a[j]);cout&lt;&lt;endl;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;//�����ǹ���һ������ͼ&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;dfs(a,6);&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;for(int&nbsp;i=0;i&lt;6;i++)&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;cout&lt;&lt;a[i]-&gt;val&lt;&lt;&quot;��&nbsp;&quot;&lt;&lt;a[i]-&gt;d&lt;&lt;&quot;&nbsp;&quot;&lt;&lt;a[i]-&gt;f&lt;&lt;endl;&nbsp;&nbsp;
}&nbsp;&nbsp;
//dfs������ʱ��O(V+E)����ͼ�ı����͵���֮��</pre><p><br/></p>', N'11', N'2017-11-18 17:48:08.267', N'1')
GO
GO
INSERT INTO [dbo].[article] ([id], [title], [desc], [content], [cateid], [time], [creator]) VALUES (N'7', N'��Զ�����Ϊ����', N'���������ģ�ʱ�Ƕ�Եǳ������ĥ����ƣ�������ֻء����µĽŲ��£�����մ�����������ص��䴺��', N'<p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">�λε���������ײײ��Ԫ��������ʻ��JN�ĸ���������׹�����С�</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">&nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">��ʵ�������������������£���ǰʧȥ�Ķ������ز�ȥ�ĵط�����Ҳ���������ˣ����ŵò�����һ�У����������ﷴ�����֡�</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">&nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><strong style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">�β������һ��������ʱ��������Ĳ�����</span></strong><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">ֻ�����������ᣬ�������������ѡ�</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">&nbsp;</span></p><blockquote style="margin: 0px; padding: 0px 0px 0px 10px; list-style: none; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; border-left-width: 3px; border-left-style: solid; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">���ţ�����������滮����</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">��ĥ�������޻�����������ץ��һ��������</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">ѧ�ð���ӵ�Ӣ���������ȥ����˼��</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">ȥ���죬��һ�����</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">���ϣ���Ҳ��ȥ��ɳ����һ�ݵص��Ķ罷��ͷ</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">���У�����δ��������</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">�ܺõ�ţƤ�ǲ��ǲ����ͻ����</span></p></blockquote><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">&nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">��ϧ���ϴ���ʲô����Ҫ��̰�Ͳ�ԸŬ������������˯�ڴ��ϣ��������ɣ����������ظ��Ժ���һ�졣</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">&nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">��Ϊ��һ���ӵ��յ��Ǵ�ѧ��ҵ�������پۣ�����ɽ�Ϻ����������������塢ʮ�ꡣ��δ����������һ�꣬��������Χ��һ��ƴ�ƣ������ӡ�</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">&nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">��Ц���ǣ��Ƶ���������ҽԺ��ͻȻ���뵽�ĸ�����ȥ�Ĺ���ǧ�겻�˺��Ӻ��ź��źȽ���ҽԺ���������ǲ��ǹ��ⶩ������ط���</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">&nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">��ֵ��ǣ����Ƕ�û�кȶ࣬�˾����ˣ��Ƶ㵽Ϊֹ�������ǵ�һ�䡰���꣬������Щ��ֻ�಻�١���</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">&nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">��Ŷ��ֻ�಻�١�ãã�˺�����Ȥ����겻�࣬��Ⱥ���ֲ��࣬���ǣ�Ҫ��ʶ����ϧ����ЩȤ�����Ƕ���������ӻ��Ϸ�Ӧ����һ��ĳ��⣿</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">&nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">���˶��Գ���ĸ��������ľ����䷱�������Խ��Խ��Į������Ϊ�㳤���ˣ�����ʵû�У�����Ӧ���Ǳ����ᣬ��ȫ���綼���᣻�ǶԺܶ����鶼�ܷ��£����ܴȱ���</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">&nbsp;</span></p><blockquote style="margin: 0px; padding: 0px 0px 0px 10px; list-style: none; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; border-left-width: 3px; border-left-style: solid; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">�㲻���ڿ���ÿһ�����飬�����ֺ��κε���Į��</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">�㶮�ã������һֱ���ɳ�����Щ���ǵȲ�����ģ�</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">���ԣ�2017 ����Ҫ����Ȥ���£�Ҫ����Ȥ������һ��</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">&nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">�����罻�ֵ�������꣬���Ƿ������ɣ����°�Ȼ��</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">�������������壬���ݵ��¸��Ը������壻</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">�紵�����������ŶԵ������ȵ�ʢ��</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">Ƽ�ٳ��ȵ��ط꣬�����ջ�����µĳ�ѩ��</span></p></blockquote><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">&nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">��������������ɣ����ǵ�˵һ������</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">�ϰ壬�鷳����ҳ���������һ�����⣬��Ҫ��ˣ�лл</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">&nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: ����; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">�����г��˰��������������2017����Ȥ�ķ緫���ˡ�</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="font-family: ����; margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-size: 15px; line-height: 24px; box-sizing: border-box !important; word-wrap: break-word !important;">ps:</span></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="font-family: ����; margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-size: 15px; line-height: 24px; box-sizing: border-box !important; word-wrap: break-word !important;">��������</span></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="font-family: ����; margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-size: 15px; line-height: 24px; box-sizing: border-box !important; word-wrap: break-word !important;">������м���Ĺ��£���������</span></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="font-family: ����; margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-size: 15px; line-height: 24px; box-sizing: border-box !important; word-wrap: break-word !important;">�����ң���Ϊ��ִ��</span></span></p><p><br/></p>', N'12', N'2017-11-18 18:07:59.330', N'1')
GO
GO
INSERT INTO [dbo].[article] ([id], [title], [desc], [content], [cateid], [time], [creator]) VALUES (N'8', N'�ж���������������������', N'ʱ��ķ�϶�����������ˣ�һ�еķ紵��򡣺�һ�еĻ��仨����  �������꣬���Ҳ����߳���ʹ����Ϊ��̫���������Բ�������ȥ����������', N'<p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px;">������ʫ��ʱ������ʱ�����ţ�������裬ʱ���ͳ���ʱ�����������������꣬�����ﶬ������޳���ȴ����һ�����顣��ͬ�ľ����ɾ������Ķ�ʣ���һ���������ߣ��Ļ��ж����߹�ɽ��ˮ������������������������������ȴ��Ҳƽ����</span><br/>&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;;"><span style="font-size: 20px; color: rgb(34, 177, 76);">��</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(34, 177, 76);">��ȥ�˶��ĺ���</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(34, 177, 76);">ӭ���˴�������</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(34, 177, 76);">��ʫ�ļ��ڣ��ٻ�����</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(34, 177, 76);">��һ�����������������</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(34, 177, 76);">��һ�����飬����Ӽ���</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px;">��л������������ˮ�����꣬���Ķ��š������Ӵ�������Ĵ��磬������������ת�ĳ�����ϸ��ʪ�µļ���������������ųɳ���������������������ˮ����˷�ӡ��������ʣ���������������ǡ�ư�������������֮�£�һ�����������ֵ���Ӱ����Ϸ���֣��������ഺ��ζ������ʫ�����......</span><br/>&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;;"><span style="font-size: 20px; color: rgb(22, 11, 255);">��</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(22, 11, 255);">������ռ�쳤��</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(22, 11, 255);">������������ػҳ�</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(22, 11, 255);">�㣬��Լ����</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(22, 11, 255);">�ý�����Ӱ������������</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(22, 11, 255);">����������������</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px;">��л���������������������������顣�������ǳ������飬�������ϴ���������õ����ɱ䡣���յ��գ��Ӻ����꣬�������ڳɳ��ĵ�·���������������������صı̲���������Ҷ��ӳ�պɻ�����˵�������Ĵ��������顣�뽭ɪɪ�뽭����������������ź��������Ļ���</span><br/>&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;;"><span style="font-size: 20px; color: rgb(237, 28, 36);">��</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(237, 28, 36);">����Ƶ�</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(237, 28, 36);">��������</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(237, 28, 36);">���أ���һ���װ</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(237, 28, 36);">ǡ�������ĸ���</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(237, 28, 36);">���ʣ���ů</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(237, 28, 36);">������޵�����</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(237, 28, 36);">��ɬ������</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px;">��л����������������ˬ�������㵭�š��������Ҷ�ͷס������ӣ�����ͣ�������Ƽ���ճ����䶨���ع���û�д�������û���ĵļ��飬ȴ����һ�ݾ���������һ˿���顣��Ҳ�����������ã�������䣬Ʒ�����������У��ļ��ֻأ��������󣬷����˽Ų���ȴ�ᶨ�����롣���費��������̹Ȼ��Ӧ������������״̬......</span><br/>&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;;"><span style="font-size: 20px; color: rgb(255, 126, 0);">��</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(255, 126, 0);">���ļ���</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(255, 126, 0);">��������ĳ���</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(255, 126, 0);">��˯���˫��</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(255, 126, 0);">���ʣ�����</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(255, 126, 0);">����Ը����������</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(255, 126, 0);">���ź�������</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(255, 126, 0);">������</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(255, 126, 0);">ɲ�Ǽ䣬��׹��ͥ</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(255, 126, 0);">�����ص�ʥ��</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(255, 126, 0);">���ϵ۸�����������</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px;">��л���������������綬���ྻ��ѩ�����罥�𣬳��ǵı�������������Ŵ�أ�ȴ�赲���������ĳ�ϡ�����ľ����������裬��������͸��������㾧Ө�������˼��һ˲���������Ǻ�Ϊ���ꡣǧ����⣬����龲��Ψ��һ֦÷��ӭ�����ţ�����ױ����ʾ��������ִ�š���ǿ�����޿��ܡ�</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px;">��л���꣬�ж����е�һ�У�</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); line-height: 32px; font-family: &quot;΢���ź� Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px;">����һ����ʮһ�¶�ʮ������</span></p><p><br/></p>', N'13', N'2017-11-18 18:08:52.717', N'1')
GO
GO
INSERT INTO [dbo].[article] ([id], [title], [desc], [content], [cateid], [time], [creator]) VALUES (N'9', N'����ȡ֮��������֮', N'��Ϊ̫���˸У����Բ����������굹Ӱ��ȥ�껪��һ�����������ġ���ֻ����úñ��棬���Լ��ļ�����', N'<p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;���棬ͻ�������ĵ��������������룬���Ϊ֮һ�ƣ�˲��Ũ���ܲ�����ض������ӵ�����������ɨ�£��������Ұ��ֵľ�����</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">������ö���ζ��ʳ����ֿɼ����ҿ��������о������֡��Ǽ�������ĸ���Ϊ�ҵ��������Ϯ�����������������գ�����Ϊʳ������ǣ����ñ������׷ɱ����������˺ڰ������ɣ��ڰ�������ʳ�����ʳ�������ô������ȥ������ȥ������ˮ��δ�ɵ���գ�ȥ���������Դ���Ȼ��������ૣ�ȥ�����ǻ������ϵ������Ϣ��</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���ԣ���Ҫ���ƣ���ڰ�������������ͷ��Ѫ�������㣬������������ʳ��Ͱ�ȫ�У����㣬��������ɱ�������£�ͷ��Ѫ�������ԣ��ټ���ʳ���ǣ��ҡ���Ҫ��ȥ��</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;������������ʳ��������ˣ�����̰�ˣ��е�����ˣ�����̰���ع�ס�ҵ�����ʱ���Ҹ��������ˡ��ҿ�ʼ���ã��������һ��������������һ������!��������������̰�������ġ���ʬ��������եʳ����������ԭ�α�¶�ˡ��ҿ�����Щαװ�ߣ�Ŷ�����ģ���Ҫ�����ǣ����ջ���ģ�����̫��ζ�ˣ��������ǣ�һ��Ҫ��ȥ��</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�Ǻڰ����Ͽգ�����һ�����ߣ��Ҳ�м�ؿ������ǣ����Ƿ���ȥ�ˡ����һ����ų��������ʱ��ǰ����һ�����ε�ǽ���ұ���ס�ˣ�û��ȥ·�������Լ��ģ���һƬ�����ĺڡ��·���һƬ���õ�����Һö������ۣ����ǣ����Ǻ��㣬������Ҫ�����������������ǣ�</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ܾã����µúܾúܾá����ң�������Ƭ��յ��죬���ϴ�Ϣ�������Ǳ���һŤͷ�����ܿ������Ǵ�����ʹ��α���������֡���ƣ�������ң��������ǣ�����һ���ֲ��ĺڶ���ʹ���أ�ʹ���ذ��������������ң�ʹ�������ţ������š�</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��һ�������ŵ�����ƿ���ˣ���һ���������һ���ڵ�ô˳���������յ�ε�������ޡ�����Ϣ��</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ʹ�����������������������������ϣ����ҿ�����ˮ��δ�ɵ���գ�����һ������ķ����������ˮ���Լ�����Ļ��䣬�ҿ�������Ǳ���������ʳ���ǣ����ٺ�ڣ���Ϊ��ӵ��������Ķ�־���һ�ӵ�и��࣬�õ����á�</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�����ɵط����ţ�������������ĸ�������ʱ��������ײ���Լ������ߣ������ǵ��ˡ��һ����Ҳ���ʳ������ǣ�������˵�׷ɱ���������Լ��ǲ�ʳ�ߣ�Ҳ�Ǳ���ʳ�ߡ��Ҳ��ٿ־�:</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">��Ϊ������ȡ֮��������֮��</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;��Ϊ������Ҫ�õ�ʲô�����ȣ�����ʲô��</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">��Ϊ���������ˣ���һƿ�������ģ��õ���һ�����磬ȫ�µģ�һ�������������ӱܵ����磬�Ƕ�ô���á�</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">���棬ͻ�������ĵ��������������룬���Ϊ֮һ�ƣ��ӵ�����������ɨ�£�һ��С�ڵ����һ�������£�פ�ͣ�����������á�</p><p><br/></p>', N'14', N'2017-11-18 18:09:31.583', N'1')
GO
GO
INSERT INTO [dbo].[article] ([id], [title], [desc], [content], [cateid], [time], [creator]) VALUES (N'10', N'���������������', N'�����ǳ�������ԭ������������ˣ�����һ��ʱ���ϴ�����ջص����Ե����磬û��ʱ�����û�����µ�������һ��ֻ��̫���Ҵ�', N'<p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">���������껪�����㡱��һ���㲻�ϸ�׵ĸ�ף������Ƕ�����12������飬�ȶ�������һ���ӵ��Ҹ�������û�����ǲ�δ�����������12�������ѣ��������ɿ�������ȫ�µİ��½�ɫ��</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">�ǲ����һ�ε���ʶ���ǲ�ס12�����ѵĵ�Σ��������������Խ��Խģ��������ע����һֱ�����ڵ����ӡ��Ǹ������������������к����Ǹ����Ҵ��˼��죬ȷһֱ���ҽи������ѣ��Ǹ�Ϊ�˰�Ϊ�����ȥ���Ӵ�����������꣬�Ǹ���˵������ĺ�����ķ��������Ǹ�����һ�е�һ�ж���Ϊ�˹�ȥ����������졢Т˳�����Һܺã����ж�һ���������ҵ�����Ӷ���Ϊ���Ǹ�����Ҫ���Ҳ����������һ�롣���¹�ȥ�����ѣ������Ҳ������κι��ڹ�ȥ���㣬��ʹ֪��һЩ����Ҳ���ʣ���Ϊ������Ĺ�ȥ����Ϊ���ѣ��Ҳ���Ĺ�ȥ��ʲô�����Ҿͽ���ʲô�����㣬�����δ����������飬��Ҳ������Ҳ�ã���������δ�����мң�����������͹��ˡ�</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">��ʱ���������룬Ϊʲô��ô������У��һ�ѡ���㣬��ѡ��һ����ʶ��ʮ���꣬����������һ�����㣡��ʵ��ϸ�������Ҳ���Ǻ���֣������ദ��ʵ�����ڣ��Ҳ��õ����Լ������ã����õ���û�л����ģ��������Լ�ѧ��������ǰ����ȡ�֣��������Լ�ѧ��������ǰ���Է��ݣ��������Ǹ���ǿ���Լ����������Ǹ����Ե�ֻ��һ���˵�ʱ��Ÿ��Ե��Լ���Ҳ�������Ϊʲôѡ�����㡣��֪������ʵ�Ҳ������ã���Ϊ��һֱ�ڰ��ݣ�һֱ��Ϊ���Ҷ�Ŭ�������һ��ڸ���ѹ�����������ڣ�����ô����һ������ʱ�һ��ǻ�����֡��һ�һ����ȥѧ�������㣬��ѧ������һ��Ů���ѣ�����һ������Ӧ�����ġ�26�꣬���Ƕ��Ѿ��������ᣬ����ҪΪ�˸��ö�ȥŬ����ϣ��δ�������ӣ����ǿ����ദ�ø��ã�</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">2013���ʱ�����Ǿ�����ͨ�ܾúܾõĵ绰���ǵõ�ʱ��������Ѷ�˵���������Ѵ�ģ�ÿ����Ц��Ц���ر��ģ���Ϊ�����и��������޼ɵ������������á�����û�������һ�죬����Ļ��Ϊ�ҵĶ��󣡵��Ұ������Ϣ�������ǵ�ʱ�����Ǽ�Ȼһ��Ҳ�����⣬�о������㱾����Ӧ����һ�����������Ѿ���Ӧ�������ݣ���ʾ�����ΰ������������ġ���ʾ�����ΰ������ֵ��������һ���Ҹ��� ֻ�������Ż������ָо�����֪��Ϊʲô����������������˽�������Ϊ�����������һ�飻</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">�������߾��磬�����Ұ��㣬������ϰ�������㡣����һ���׿�ˮ�����ֿɼ���������ζ��������ϰ��������Ҳ�벻����������Ҳ����ˣ���ϰ������������������ϰ�������������㡣�˴�ϰ�ߣ��˴�����������������మ�����������ϰ��һ���˵�ϰ�ߡ��������������ദ�Ų���һ���ʱ�䣬ȷ�о�ʱ��ó��ó��������ദ�˺þúþã���֪�����У�������һ����Ϥ�ĸо�������ע����Ӧ����һ��һ������ʹ��ȥ��12�꣬����һֱ�����ѣ���������������û�й���Ȼ���ʱ��ȷ����ϰ�����������б˴˵Ĵ��ڣ���ʱ����Ϊæ���þ�û������Ϣ��û�е绰���ͻ᲻�Ծ���Ϲ�룬���Ծ��ĵ��ġ�Ҳ���������ν�İ��飡</p><p><br/></p>', N'15', N'2017-11-19 09:53:34.607', N'1')
GO
GO
INSERT INTO [dbo].[article] ([id], [title], [desc], [content], [cateid], [time], [creator]) VALUES (N'13', N'ǳ����أ�����ʱ��', N'  �쳾��ů��������ǳ���ִټ䣬����һ�أ���ʫ�ľ�㣬����Ը������������һ�ݿ̹ǵ�˼�ϵһ���ĵĹ�ǣ�����������˲�䣬һĨ�����ĵ�ɫ����Ȼ�����ļ䣬������ǳ��ůһ���Ļ��ա�', N'<p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 27px; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: ����;"><span class="Apple-converted-space">&nbsp;</span>�쳾��ů��������ǳ���ִټ䣬����һ�أ���ʫ�ľ�㣬����Ը������������һ�ݿ̹ǵ�˼�ϵһ���ĵĹ�ǣ�����������˲�䣬һĨ�����ĵ�ɫ����Ȼ�����ļ䣬������ǳ��ůһ���Ļ��ա�</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 27px; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">----------<span style="font-family: ����;">���</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 27px; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: ����;">&nbsp; ��������˿˿�뵡������ǵصĲ����뿪��ִ�ʣ���Ȧ��һ�������������һ���٣��ٶ����ı���ǳ����Щ���鲻Ը��С������ռ����̫��Ŀռ䣬ӹӹµµ�У��ι����������ָ����ɾɾ������</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 27px; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: ����;">&nbsp; �紺��΢�����࣬�磬�º͵Ĵ��ѣ��������ԣ���˿��ѿ���ٻ����ޣ��һ����Ƶ����������������̻����¡��������̣�ͤˮ鿼䣬����ɽˮ��һ��ǧ�ꡣ��ˮ�������緽�ã�ɽɫ���������档�������������ӣ���ױŨĨ�����ˡ�������һ���ǣ����������ϱ��£�������ϸ������һ���꣬���������µ��ţ�ˮī���̡������ɵ����꣬ҡҷ����֦����ˮ�������������������ϴ��Σ��������껪��ϴ���ǧ�ꡣ��Թ�Ĺ����ʯ���С�һ���������ֽɡ���������������һ����ˮ�г���</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 27px; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: ����;">&nbsp; һ��ʱ�⣬�����ı���д��дһ��ɽˮ���������棬д�������Σ��������У�д��ǧ�����⣬�𻯳����������ԣ�дСС������������ǳǳ�����У�ʼ����һ����ů�������ĳ�¶��������ü�ۣ�������������˵�������о������������ģ������ľ�������������ʥ�����Ĳ��������������ģ����ߵ��Ĳ��������ߵ������ġ���ӵһ�����ģ�ƽ�����������ʱȣ����������������º͵Ĺ����У�����Լ���Ʒ������ζ�����¶�����</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 27px; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: ����;">&nbsp; �����ж���Բ��������������ŭ��Ҳ�����Ǻ��ļѻ������ǣ�һ�����Ŀ�ζ���������ϣ���ϲ�����ˣ�������ԣ��㻤����ů����ο���İ������������ε�˲�䣬��׽���������������ԣ�һ��һ�ģ�һ��һҶ��</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 27px; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: ����;">&nbsp; ��ˮ���������������ƣ����������⣬�������ϣ���������ʣ�����¶�����ӭ��������������������į��ϸϸ��������˵�����������������±���޳������ˣ������ڸ���һ���ţ�����Ϊ�����һ����ֻҪ�����ĳ��������⣬�������Ĳ����赲�ķ���</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 27px; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: ����;">&nbsp; ���������µ�С����磬���꣬ҹɫ�ռţ�һ�����ƣ��Ի�����ɢȥ��������ˣ�����ĬĬ������������ȥ���쳾���ɰ��ã���ɲ�����ϲ�����벻�����������У��������ڡ�</span></p><p><br/></p>', N'11', N'2017-11-18 18:03:00.343', N'1')
GO
GO
INSERT INTO [dbo].[article] ([id], [title], [desc], [content], [cateid], [time], [creator]) VALUES (N'27', N'��ֵ��ӵ�и��õģ����ս��������Ǹ���', N'��һ������һ�����һ��΢Ц�������о��������谮��֤�����Һܰ�����Ϊ��������Ը��ٿ���ȥ������������Ϸ��ҪǮ�Ҷ�����˵�����͹�ȥ������ĩ�Ƶ��˺͹�����һ���ʱ��', N'<p><img src="/Content/ueditor/net/upload/image/20171123/6364704242431784848125844.jpg" title="abbd0e9f6e009293e516f1dbfc4c6805.jpg" alt="abbd0e9f6e009293e516f1dbfc4c6805.jpg"/></p><p>��һ������һ�����һ��΢Ц�������о��������谮��֤�����Һܰ�����Ϊ��������Ը��ٿ���ȥ������������Ϸ��ҪǮ�Ҷ�����˵�����͹�ȥ������ĩ�Ƶ��˺͹�����һ���ʱ�⣬ֻΪ������һ�𣬿�����������ǲ���������뿪���ң�����ϢҲ���أ������������޷��ظ����ѵ�������ĳ��úܳ������������?����һ�������������������ߣ���ֻ�ش𣺡��������Լ�����������֪�����Ѿ��������ˣ��������Լ������㣬�������������Լ���á��������Լ�����Ϊ����ôһ��ֻ�л������ȴû���ж��ĵ���������ʹ���˰���֮�ã�����ʵ�ǲ�Ը˵����ô�п�Ļ��ģ��Ͼ�˭��û�д�</p><p>Ů����Զ���ǳ����Ļ��٣��õİ���������������ˣ����õİ��������������л������˭���ܱ�֤�Լ���������1-2��������?���Ͼ͵��ǳ������鳡�ľ������Ժ󳤵����۰ɡ�</p><p>����С��֮ǰͨ��һ�����������ʶ��һ������С6������ѣ����ǳ�����ʱ�ͱ˴�һ�����飬���裬������������һ����͵ȡ���֪�����ȹ���3���µ������ڣ����Ѳ��ٶ����۰����ģ������ڵı˴˷������Щ�����Ѿ��������ڡ�������۲���ô������θ��飬��Ϊ�����������̫������û����̫���ϣ�������۶������е���Į������������ȴʱ�������������졣���ǽ��������ѷ��ֹ�����һ��ũ��С���ϵ�Ů��������Ҳûʲô������ʲ�����������Ҳû�С������Ϳ�ʼ��С�������ǡ�</p><p>С��������ԥ��θ��飬������ΪС���������Ѳ��ã�����С�����Լ���Ϊ���ѵ�ѹ����С���������ڹ������飬������ʶ��ʱ��С�������Ѳ��ϸ�����������ʶ��6���£����Ѳ��ϴ�ѧ������ֻ�������Ѽ��ڵ�ʱ����棬����ʹ�������������Ǻ��ټ��档С��Ҫæ��������������Ҫæ���档��С����ͨҪ������һ��ȹ�������ʱ������ȴ�������˵Ҫ�����İ���ȥʲô�ط��Ƚ�ڡ�С��˵���һ�μ����ʱ�򣬻���С���������Ѽ����ġ�</p><p>�������У�С��һֱ�����ϣ���ϣ�����ѻ�һֱ����������û���κν���������Ȱ����۰����ѵ�������ϵ��ʽ��ɾ������֮��6���µ�ʱ������۾���ʧ�˻��ǵ���һ�����������ޱȵ������У��������ú���ϧ��������������˵�������˾������У�������Ļ���Ϊʲô��������Ϣ��Ϊʲô�����ҽ�ڡ����ο�����Ҳ���ܸ����κ���顣�˼Ҳ���˵��Ҫ������Ǯ�����ӣ�����;Ҫ��������顣��ʱ�䣬��Ǯ����Ը����㡣�㻹���ڴ����ҿ���Ҳ�����������Լ������Ƿ�������ÿ�ι��������ҵĻ������Ǵ��һ��������΢Ц����˵����˵�ĺ��е���</p><p>6�����У��Ҳ��벻������С����ߡ���������˴������ҵ��ĸ������ۡ��ϰ��ʱ�������Ǵ�����ֵ�Ц�ţ����ǻص��ң����������ҿ������ҳ����������������˰ɣ��۱��������Լ��ˡ�һ��������������ɣ������Լ��������У�Ҳ˵���Լ������ı��Լ���������Ҫ�ġ�������Ȼ�����������ǻ����ⲻ���˸С���������������֢�����˿ޣ���Ҳû����������������Ƿ�˺ܶ���ծ�����ÿ�͸֧5��Ԫ����ծ5ǧ�ࡣ������ù���ʹ����������һ���²�3ǧ��Ĺ��ʣ��ⷿ2100Ԫ���ڱ��Ϲ���ĳ��У����۵���㹤�ʻ����������졣</p><p>�ڼң����Ѿ�����Լ�������5���ˣ���ÿ�쵨ս�ľ��ز�������������ɱ��Ȼ���°��˾�ȥ�Ǹ��ط����������ڡ��������۵İ������������5��Ԫ������ȥ��һ��900Ԫ������ס����������һ��㻹��ծ��ÿ������������׾ݡ���������Ӱ���ң�֮��Ͱ���Ҽҡ��Ҹ���˵����Ҫ�����ܣ�����ȥ������APP����˵˵���������кܶ����ڻ��кܶ����һ�����ˣ�������������������ܺúÿ����㡣֮�����ͺ��ٺ���˵�������ĵ����飬��Ҳû�ʡ�</p><p>һ���º󣬹���ͻȻ���������ı��������Ҽ��ſڡ�������������������ҵ�У��ڳﻮ�Լ��Ĺ����ң������������ɶ����������Թ�˾��һ�й滮���Ҷ�����˵�ʹ�Ӧ�ˡ�</p><p>��˵�����������ȶ�����׼���ﻮ���Լ��ļ��罨һ��������ѯ�Ĺ�˾������������Ů���ȹ���д��۵�ʱ�䡣</p><p>�������������������ڵ��Ϲ��������пɰ��ĺ��ӡ����Ϲ�����Ը��Ϊ������˾����ÿ�춼������Ϊ��������ͣ����°���Խ���С����</p><p≯����ǰ�Ƕβ���֪�ĸ��顣����ֻ��Ц��Ц��������������ο��˵������ΪŮ�ԣ�����ÿһ���˶�ֵ��ӵ�и��õġ�ֻҪ���Լ���ø��ã��ͻ��������Լ�ͬƵ�ʵ��ˡ���������ӡ�������̡�</p><p>��ֵ��ӵ�и��õģ����Լ���ø��ã�һ�����ҵ��Ǹ���Ϊ�㻨��ʱ�䣬��Ǯ����ͬƵ�ʵ��Ǹ��ˡ�</p><p><br/></p>', N'21', N'2017-11-23 14:01:00.897', N'1')
GO
GO
INSERT INTO [dbo].[article] ([id], [title], [desc], [content], [cateid], [time], [creator]) VALUES (N'30', N'ASp.NET MVC5 Blog�ܹ�', N'���ڴ˴ογ���ƣ��ҵĿ������̣�лл�ۿ���', N'<p><span style="font-family: ����, ����_GB2312, SimKai;">(ps:������ʾ��ַ-ǰ̨��&nbsp;</span><a href="http://asp.zyang.top" target="_self" title="http://asp.zyang.top" style="font-family: ����, ����_GB2312, SimKai; text-decoration: underline;"><span style="font-family: ����, ����_GB2312, SimKai;">http://asp.zyang.top</span></a><span style="font-family: ����, ����_GB2312, SimKai;">&nbsp; &nbsp;��̨:&nbsp; </span><a href="http://asp.zyang.top/admin" style="font-family: ����, ����_GB2312, SimKai; text-decoration: underline;"><span style="font-family: ����, ����_GB2312, SimKai;">http://asp.zyang.top/admin</span></a><span style="font-family: ����, ����_GB2312, SimKai;">&nbsp;)&nbsp; &nbsp;</span></p><p><span style="font-family: ����, ����_GB2312, SimKai;">&nbsp;(�˺ź����붼�ǣ� admin&nbsp; &nbsp; &nbsp;Դ���������ӣ�</span><a href="https://pan.baidu.com/s/1i5KkXdr" style="font-family: ����, ����_GB2312, SimKai; text-decoration: underline;"><span style="font-family: ����, ����_GB2312, SimKai;">https://pan.baidu.com/s/1i5KkXdr</span></a><span style="font-family: ����, ����_GB2312, SimKai;">&nbsp; )</span></p><p><br/></p><h2>�������̣�&nbsp;</h2><h2><span style="background-color: rgb(255, 255, 0); font-size: 16px;">������ݱ�-&gt;�������ݱ����������ĺ�ģ����-&gt;�ֱ𴴽�ǰ��̨��Layoutҳ-&gt;����ҵ������Ŀ�����-&gt;ʵ�ַ����������ͼ</span></h2><ol class=" list-paddingleft-2" style="list-style-type: decimal;"><li><h3>������ݱ�&nbsp;</h3><h4></h4><p style="text-align:center"><img src="/Content/ueditor/net/upload/image/20171127/6364738572372349268311451.png" title="image.png" alt="image.png" width="448" height="296"/></p></li><li><h3>��ṹ��</h3><p><span style="background-color: rgb(255, 0, 0);">admin��</span></p><p><span style="background-color: rgb(255, 0, 0);"></span></p><p><span style="background-color: rgb(255, 0, 0);"></span></p><p><br/></p><p><span style="background-color: rgb(255, 0, 0);"></span></p><p><br/></p><p style="text-align:center"><img src="http://asp.zyang.top/Content/ueditor/net/upload/image/20171127/6364738589105155632758204.png" title="image.png" alt="image.png"/></p></li></ol><p><span style="background-color: rgb(192, 0, 0);"><br/></span></p><p><span style="background-color: rgb(255, 0, 0);">article��</span><br/></p><p><span style="background-color: rgb(255, 0, 0);"><br/></span></p><p><br/></p><p style="text-align:center"><img src="/Content/ueditor/net/upload/image/20171127/6364738602705160071342772.png" title="image.png" alt="image.png"/></p><p><span style="background-color: rgb(255, 0, 0);">cate��</span></p><p style="text-align:center"><img src="/Content/ueditor/net/upload/image/20171127/6364738649048905458027587.png" title="image.png" alt="image.png"/></p><p><br/></p><p><span style="background-color: rgb(255, 0, 0);">link��</span></p><p style="text-align:center"><span style="background-color: rgb(255, 0, 0);"><img src="/Content/ueditor/net/upload/image/20171127/6364738659473930466578625.png" title="image.png" alt="image.png"/></span></p><p><br/></p><h3><span style="background-color: rgb(255, 255, 255);">3.���ǰ��̨����ҳ ��</span></h3><p><span style="background-color: rgb(255, 255, 255);">&nbsp; &nbsp;</span></p><p style="text-align:center"><img src="/Content/ueditor/net/upload/image/20171127/6364738674842674546391981.png" title="image.png" alt="image.png"/></p><p><span style="background-color: rgb(255, 255, 255);"></span><br/></p><p><br/></p><h3>4.����ʵ������ҵ��Ŀ�����</h3><p style="text-align:center"><img src="/Content/ueditor/net/upload/image/20171127/6364738684400468809692097.png" title="image.png" alt="image.png"/></p><p><br/></p><p><br/></p><p><br/></p><h3>5.��������ʵ�֣�����Ȥ��ͬѧ���������ҵĴ��뿴��</h3><p><br/></p><h2><span style="font-family: ����, SimSun; color: rgb(255, 255, 0); background-color: rgb(0, 176, 240); font-size: 36px;">����������������������:</span></h2><p><br/></p><ol class=" list-paddingleft-2" style="list-style-type: decimal;"><li><p>ǰ̨���֣�&nbsp;</p></li></ol><p>&nbsp; &nbsp; &nbsp; &nbsp; ǰ̨��ҳ(home/index),����Ҫѭ���������е����²��ҷ�ҳ��������Ҫ���������е�<span style="background-color: rgb(255, 0, 0);">����</span>��<span style="background-color: rgb(255, 0, 0);">��������</span>��<span style="background-color: rgb(255, 0, 0);">��������</span><span style="background-color: rgb(255, 255, 255);">������һ����ͼҳֻ��@modelһ�Σ�Ҳ����ͨ�����������indexҳ�б���ֻ�ܴ�һ��list��</span></p><p><span style="background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp; &nbsp; ����һ�ַ�����Tuple��ͨ�����ַ�������ʵ��������ģ�ͣ�������ԱȽϷ����������ʹ�ò�����ͼ��</span></p><p><span style="background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp; &nbsp;<img src="/Content/ueditor/net/upload/image/20171127/6364738733053594376388764.png" title="image.png" alt="image.png"/></span></p><p><span style="background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp;&nbsp;</span></p><p><span style="background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp; &nbsp;<img src="/Content/ueditor/net/upload/image/20171127/6364738735298914056528980.png" title="image.png" alt="image.png"/></span></p><p><span style="background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp;�������ֱַ����һ��PatialView���棬Ȼ��ͨ�����ֺ���@Html.Action(&quot;������&quot;,&quot;������������&quot;);</span></p><pre class="brush:html;toolbar:false;">&nbsp;&lt;div&nbsp;class=&quot;topbar&quot;&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;inner&quot;&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;ul&nbsp;class=&quot;nav&quot;&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;li&nbsp;id=&quot;menu-item-180&quot;&nbsp;class=&quot;menu-item&nbsp;menu-item-type-taxonomy&nbsp;menu-item-object-category&nbsp;menu-item-180&quot;&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@Html.ActionLink(&quot;��ҳ&quot;,&nbsp;&quot;Index&quot;,&nbsp;&quot;Home&quot;)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/li&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@Html.Action(&quot;showCates&quot;,&nbsp;&quot;Home&quot;)&nbsp;&nbsp;&nbsp;&nbsp;//չʾ���з��࣬����Home�������µ�showCates����;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/ul&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;</pre><p><span style="background-color: rgb(255, 255, 255);"></span><br/></p><p><span style="background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp;</span></p><pre class="brush:c#;toolbar:false">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;PartialViewResult&nbsp;showCates()&nbsp;&nbsp;&nbsp;//Home�������µ�showCates����
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;result&nbsp;=&nbsp;(from&nbsp;c&nbsp;in&nbsp;dbContext.cate&nbsp;where&nbsp;c.catname&nbsp;!=&nbsp;&quot;δ����&quot;&nbsp;select&nbsp;c).ToList&lt;cate&gt;();
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;PartialView(result);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</pre><pre class="brush:html;toolbar:false">@model&nbsp;IEnumerable&lt;MyBlog.Models.cate&gt;&nbsp;&nbsp;&nbsp;//showCates��(patial)��ͼ
&nbsp;&nbsp;&nbsp;&nbsp;@foreach&nbsp;(var&nbsp;c&nbsp;in&nbsp;Model)
&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;li&nbsp;id=&quot;menu-item-180&quot;&nbsp;class=&quot;menu-item&nbsp;menu-item-type-taxonomy&nbsp;menu-item-object-category&nbsp;menu-item-180&quot;&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@Html.ActionLink(c.catname,&nbsp;&quot;ArticlesOfCate&quot;,&nbsp;&quot;Home&quot;,&nbsp;new&nbsp;{&nbsp;id&nbsp;=c.id&nbsp;},&nbsp;new&nbsp;{})
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/li&gt;
&nbsp;&nbsp;&nbsp;&nbsp;}</pre><p>2.���ύ������<br/></p><p>&nbsp; &nbsp; &nbsp;jquery ajax �ύ��</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><pre class="brush:js;toolbar:false">&lt;script&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$(document).ready(function&nbsp;()&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//��¼���ύ
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$(&quot;#btn-submit&quot;).click(function&nbsp;()&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(!$(&#39;#user&#39;).val())&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;alert(&quot;�������û�����&quot;);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(!$(&#39;#pwd&#39;).val())&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;alert(&quot;���������룡&quot;);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$.ajax({
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;type:&nbsp;&quot;post&quot;,
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;url:&nbsp;&quot;CkeckLogin&quot;,
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;data:&nbsp;$(&quot;#form-login&quot;).serialize(),
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dataType:&nbsp;&quot;json&quot;,
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;success:&nbsp;function&nbsp;(msg)&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(msg.status&nbsp;==&nbsp;1)&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;layer.msg(msg.data);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;window.setTimeout(&quot;window.location.href=&#39;Info&#39;&quot;,&nbsp;1000);&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;else&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;layer.msg(msg.data);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;});
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;});
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;});
&nbsp;&nbsp;&nbsp;&nbsp;&lt;/script&gt;</pre><pre class="brush:c#;toolbar:false">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;JsonResult&nbsp;CkeckLogin(string&nbsp;username,&nbsp;string&nbsp;password)&nbsp;&nbsp;&nbsp;&nbsp;//�����¼��֤�ķ���&nbsp;&nbsp;Admin/CkeckLogin
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;result&nbsp;=&nbsp;from&nbsp;u&nbsp;in&nbsp;dbContext.admin
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;where&nbsp;u.username&nbsp;==&nbsp;username&nbsp;&amp;&amp;&nbsp;u.password&nbsp;==&nbsp;password
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;select&nbsp;u;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(result.Count()&nbsp;&gt;&nbsp;0)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Session[&quot;username&quot;]&nbsp;=&nbsp;username;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;Json(new&nbsp;{&nbsp;status&nbsp;=&nbsp;1,&nbsp;data&nbsp;=&nbsp;&quot;��¼�ɹ���&quot;&nbsp;});
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;Json(new&nbsp;{&nbsp;status&nbsp;=&nbsp;0,&nbsp;data&nbsp;=&nbsp;&quot;��¼ʧ�ܣ�&quot;&nbsp;});
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</pre><p><span style="background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp; jquery Get�ύ:</span></p><p><span style="background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp;&nbsp;</span></p><pre class="brush:js;toolbar:false">//ɾ������&nbsp;jquery��get����
&nbsp;function&nbsp;cate_del(id,obj)&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;layer.confirm(&#39;ȷ��Ҫɾ����&#39;,&nbsp;function&nbsp;(index)&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//�˴������̨�����·��ǳɹ����ǰ̨������
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$.get(&quot;Cate/processDelete&quot;,&nbsp;{&nbsp;id:&nbsp;id&nbsp;})
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$(obj).parents(&quot;tr&quot;).remove();
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;layer.msg(&#39;��ɾ��!&#39;,&nbsp;{&nbsp;icon:&nbsp;1,&nbsp;time:&nbsp;1000&nbsp;});
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;});
&nbsp;&nbsp;&nbsp;&nbsp;}</pre><p><span style="background-color: rgb(255, 255, 255);">3.�õ���ǰ����ؼ���:&nbsp;</span></p><p><span style="background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp; <span style="background-color: rgb(255, 0, 0);">bootstrap</span> ,<span style="background-color: rgb(255, 0, 0);">layer.js</span></span></p><p><span style="background-color: rgb(255, 255, 255);"><br/></span></p><p><span style="background-color: rgb(255, 255, 255);"><br/></span></p><p><br/></p>', N'23', N'2017-11-27 14:00:58.973', N'19')
GO
GO
SET IDENTITY_INSERT [dbo].[article] OFF
GO

-- ----------------------------
-- Table structure for cate
-- ----------------------------
GO
CREATE TABLE [dbo].[cate] (
[id] int NOT NULL IDENTITY(1,1) ,
[catname] nvarchar(60) NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[cate]', RESEED, 23)
GO

-- ----------------------------
-- Records of cate
-- ----------------------------
SET IDENTITY_INSERT [dbo].[cate] ON
GO
INSERT INTO [dbo].[cate] ([id], [catname]) VALUES (N'1', N'δ����')
GO
GO
INSERT INTO [dbo].[cate] ([id], [catname]) VALUES (N'9', N'��־����')
GO
GO
INSERT INTO [dbo].[cate] ([id], [catname]) VALUES (N'10', N'�������')
GO
GO
INSERT INTO [dbo].[cate] ([id], [catname]) VALUES (N'11', N'��������')
GO
GO
INSERT INTO [dbo].[cate] ([id], [catname]) VALUES (N'12', N'��������')
GO
GO
INSERT INTO [dbo].[cate] ([id], [catname]) VALUES (N'13', N'��������')
GO
GO
INSERT INTO [dbo].[cate] ([id], [catname]) VALUES (N'14', N'������¼')
GO
GO
INSERT INTO [dbo].[cate] ([id], [catname]) VALUES (N'15', N'����˵˵')
GO
GO
INSERT INTO [dbo].[cate] ([id], [catname]) VALUES (N'20', N'��������')
GO
GO
INSERT INTO [dbo].[cate] ([id], [catname]) VALUES (N'21', N'���¾�ѡ')
GO
GO
INSERT INTO [dbo].[cate] ([id], [catname]) VALUES (N'23', N'��̼���')
GO
GO
SET IDENTITY_INSERT [dbo].[cate] OFF
GO

-- ----------------------------
-- Table structure for link
-- ----------------------------
GO
CREATE TABLE [dbo].[link] (
[id] int NOT NULL IDENTITY(1,1) ,
[title] nvarchar(50) NOT NULL ,
[url] nvarchar(50) NOT NULL ,
[desc] nvarchar(MAX) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[link]', RESEED, 13)
GO

-- ----------------------------
-- Records of link
-- ----------------------------
SET IDENTITY_INSERT [dbo].[link] ON
GO
INSERT INTO [dbo].[link] ([id], [title], [url], [desc]) VALUES (N'4', N'��־����', N'http://www.cnlianxue.com/', N'')
GO
GO
INSERT INTO [dbo].[link] ([id], [title], [url], [desc]) VALUES (N'5', N'����ʰ��', N'http://bohaishibei.com/', N'')
GO
GO
INSERT INTO [dbo].[link] ([id], [title], [url], [desc]) VALUES (N'6', N'��ͼ��', N'http://www.haopic.me/', N'')
GO
GO
INSERT INTO [dbo].[link] ([id], [title], [url], [desc]) VALUES (N'7', N'�󰶶���', N'http://www.zreading.cn/', N'')
GO
GO
INSERT INTO [dbo].[link] ([id], [title], [url], [desc]) VALUES (N'8', N'˼������', N'http://missever.com', N'')
GO
GO
INSERT INTO [dbo].[link] ([id], [title], [url], [desc]) VALUES (N'9', N'������¼', N'http://www.weiweiqi.com/', N'')
GO
GO
INSERT INTO [dbo].[link] ([id], [title], [url], [desc]) VALUES (N'10', N'������', N'http://www.meiwen.com.cn/', N'')
GO
GO
INSERT INTO [dbo].[link] ([id], [title], [url], [desc]) VALUES (N'11', N'����ͼժ', N'http://www.qingniantuzhai.com/', N'')
GO
GO
SET IDENTITY_INSERT [dbo].[link] OFF
GO

-- ----------------------------
-- Indexes structure for table admin
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table admin
-- ----------------------------
ALTER TABLE [dbo].[admin] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table article
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table article
-- ----------------------------
ALTER TABLE [dbo].[article] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table cate
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table cate
-- ----------------------------
ALTER TABLE [dbo].[cate] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table link
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table link
-- ----------------------------
ALTER TABLE [dbo].[link] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[article]
-- ----------------------------
ALTER TABLE [dbo].[article] ADD FOREIGN KEY ([cateid]) REFERENCES [dbo].[cate] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[article] ADD FOREIGN KEY ([creator]) REFERENCES [dbo].[admin] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
