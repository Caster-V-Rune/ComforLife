package com.mail;

public class SendMailDemo {
    public static void send(String email,String yanzhengma){
        // 设置邮件服务器信息
        MailSenderInfo mailInfo = new MailSenderInfo();
        mailInfo.setMailServerHost("smtp.163.com");
        mailInfo.setMailServerPort("25");
        mailInfo.setValidate(true);

        // 邮箱用户名
        mailInfo.setUserName("comforlife123@163.com");
        // 邮箱密码
        mailInfo.setPassword("abc123");
        // 发件人邮箱
        mailInfo.setFromAddress("comforlife123@163.com");
        // 收件人邮箱
        mailInfo.setToAddress(email);
        // 邮件标题
        mailInfo.setSubject("comforlife验证邮件");
        // 邮件内容
        StringBuffer buffer = new StringBuffer();
        buffer.append(yanzhengma);

        mailInfo.setContent(buffer.toString());

        // 发送邮件
        SimpleMailSender sms = new SimpleMailSender();
        // 发送文体格式
        sms.sendTextMail(mailInfo);
        // 发送html格式
        SimpleMailSender.sendHtmlMail(mailInfo);
        System.out.println("邮件发送完毕");
    }
}