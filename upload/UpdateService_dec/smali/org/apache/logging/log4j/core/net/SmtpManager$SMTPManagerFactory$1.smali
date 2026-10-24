.class Lorg/apache/logging/log4j/core/net/SmtpManager$SMTPManagerFactory$1;
.super Ljavax/mail/Authenticator;
.source "SmtpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/logging/log4j/core/net/SmtpManager$SMTPManagerFactory;->buildAuthenticator(Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/Authenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final passwordAuthentication:Ljavax/mail/PasswordAuthentication;

.field final synthetic this$0:Lorg/apache/logging/log4j/core/net/SmtpManager$SMTPManagerFactory;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/logging/log4j/core/net/SmtpManager$SMTPManagerFactory;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/logging/log4j/core/net/SmtpManager$SMTPManagerFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$password",
            "val$username"
        }
    .end annotation

    .line 392
    iput-object p1, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$SMTPManagerFactory$1;->this$0:Lorg/apache/logging/log4j/core/net/SmtpManager$SMTPManagerFactory;

    iput-object p2, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$SMTPManagerFactory$1;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$SMTPManagerFactory$1;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljavax/mail/Authenticator;-><init>()V

    .line 393
    new-instance p2, Ljavax/mail/PasswordAuthentication;

    iget-object p3, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$SMTPManagerFactory$1;->val$username:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$SMTPManagerFactory$1;->val$password:Ljava/lang/String;

    invoke-direct {p2, p3, v0}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$SMTPManagerFactory$1;->passwordAuthentication:Ljavax/mail/PasswordAuthentication;

    return-void
.end method


# virtual methods
.method protected getPasswordAuthentication()Ljavax/mail/PasswordAuthentication;
    .locals 1

    .line 398
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SmtpManager$SMTPManagerFactory$1;->passwordAuthentication:Ljavax/mail/PasswordAuthentication;

    return-object v0
.end method
