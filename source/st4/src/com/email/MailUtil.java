package com.email;
import java.util.Date;
import java.util.Properties;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public final class MailUtil {
    // �ʼ������ߵ�ַ
    private static final String SenderEmailAddr = "1527072012@qq.com";
    // �ʼ������������û�
    private static final String SMTPUserName = "1527072012@qq.com";
    // �ʼ���������������
    private static final String SMTPPassword = "rkwtluonnvasiegj";
    // �ʼ�����������SMTP������
    private static final String SMTPServerName = "smtp.qq.com";
    // ��������
    private static final String TransportType = "smtp";
    // ����
    private static Properties props;

    private MailUtil() {}

    /*��̬������*/
    static {
        MailUtil.props = new Properties();
        // �洢�����ʼ�����������Ϣ
        MailUtil.props.put("mail.smtp.host", MailUtil.SMTPServerName);
        // ͬʱͨ����֤
        MailUtil.props.put("mail.smtp.auth", "true");
        MailUtil.props.put("mail.smtp.starttls.enable","true");
    }

    /**
     * �����ʼ�
     * @param emailAddr:�������ʼ���ַ
     * @param mailTitle:�ʼ�����
     * @param mailConcept:�ʼ�����
     */
    public static void sendMail(String emailAddr, String mailTitle,
            String mailConcept) {
        // ���������½�һ���ʼ��Ự��null������һ��Authenticator(��֤����) ����
        Session s = Session.getInstance(MailUtil.props, null);
        // ���õ��Ա�־,Ҫ�鿴�����ʼ��������ʼ���������ø÷���
        s.setDebug(false);        
        // ���ʼ��Ự�½�һ����Ϣ����
        Message message = new MimeMessage(s);
        try {
            // ���÷�����
            Address from = new InternetAddress(MailUtil.SenderEmailAddr);
            message.setFrom(from);

            // �����ռ���
            Address to = new InternetAddress(emailAddr);
            message.setRecipient(Message.RecipientType.TO, to);

            // ��������
            message.setSubject(mailTitle);
            // �����ż�����
            message.setText(mailConcept);
            // ���÷���ʱ��
            message.setSentDate(new Date());
            // �洢�ʼ���Ϣ
            message.saveChanges();

            Transport transport = s.getTransport(MailUtil.TransportType);
            // Ҫ��������û��������룻
            transport.connect(MailUtil.SMTPServerName, MailUtil.SMTPUserName,
                    MailUtil.SMTPPassword);

            // �����ʼ�,���еڶ�����������������õ��ռ��˵�ַ
            transport.sendMessage(message, message.getAllRecipients());
            transport.close();
            System.out.println("�����ʼ�,�ʼ���ַ:" + emailAddr + " ����:" + mailTitle
                    + " ����:" + mailConcept + "�ɹ�!");
        } catch (Exception e) {
            System.out.println(e.getMessage());
            System.out.println("�����ʼ�,�ʼ���ַ:" + emailAddr + " ����:" + mailTitle
                    + " ����:" + mailConcept + "ʧ��! ԭ����" + e.getMessage());
        }
    }
} 
