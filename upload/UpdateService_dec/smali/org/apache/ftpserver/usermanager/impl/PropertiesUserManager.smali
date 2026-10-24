.class public Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;
.super Lorg/apache/ftpserver/usermanager/impl/AbstractUserManager;
.source "PropertiesUserManager.java"


# static fields
.field private static final PREFIX:Ljava/lang/String; = "ftpserver.user."


# instance fields
.field private final LOG:Lorg/slf4j/Logger;

.field private userDataFile:Ljava/io/File;

.field private userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

.field private userUrl:Ljava/net/URL;


# direct methods
.method public constructor <init>(Lorg/apache/ftpserver/usermanager/PasswordEncryptor;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "passwordEncryptor"    # Lorg/apache/ftpserver/usermanager/PasswordEncryptor;
    .param p2, "userDataFile"    # Ljava/io/File;
    .param p3, "adminName"    # Ljava/lang/String;

    .line 135
    invoke-direct {p0, p3, p1}, Lorg/apache/ftpserver/usermanager/impl/AbstractUserManager;-><init>(Ljava/lang/String;Lorg/apache/ftpserver/usermanager/PasswordEncryptor;)V

    .line 119
    const-class v0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;

    .line 120
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->LOG:Lorg/slf4j/Logger;

    .line 137
    invoke-direct {p0, p2}, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->loadFromFile(Ljava/io/File;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Lorg/apache/ftpserver/usermanager/PasswordEncryptor;Ljava/net/URL;Ljava/lang/String;)V
    .locals 1
    .param p1, "passwordEncryptor"    # Lorg/apache/ftpserver/usermanager/PasswordEncryptor;
    .param p2, "userDataPath"    # Ljava/net/URL;
    .param p3, "adminName"    # Ljava/lang/String;

    .line 145
    invoke-direct {p0, p3, p1}, Lorg/apache/ftpserver/usermanager/impl/AbstractUserManager;-><init>(Ljava/lang/String;Lorg/apache/ftpserver/usermanager/PasswordEncryptor;)V

    .line 119
    const-class v0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;

    .line 120
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->LOG:Lorg/slf4j/Logger;

    .line 147
    invoke-direct {p0, p2}, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->loadFromUrl(Ljava/net/URL;)V

    .line 148
    return-void
.end method

.method private getPassword(Lorg/apache/ftpserver/ftplet/User;)Ljava/lang/String;
    .locals 5
    .param p1, "usr"    # Lorg/apache/ftpserver/ftplet/User;

    .line 369
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "name":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "password":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 373
    invoke-virtual {p0}, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->getPasswordEncryptor()Lorg/apache/ftpserver/usermanager/PasswordEncryptor;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/ftpserver/usermanager/PasswordEncryptor;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 375
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->getPasswordEncryptor()Lorg/apache/ftpserver/usermanager/PasswordEncryptor;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v2, v3}, Lorg/apache/ftpserver/usermanager/PasswordEncryptor;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 377
    .local v2, "blankPassword":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->doesExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ftpserver.user."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "userpassword"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 379
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    invoke-virtual {v4, v3, v2}, Lorg/apache/ftpserver/util/BaseProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 380
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 381
    :cond_1
    move-object v1, v2

    .line 384
    .end local v2    # "blankPassword":Ljava/lang/String;
    :goto_0
    return-object v1
.end method

.method private loadFromFile(Ljava/io/File;)V
    .locals 4
    .param p1, "userDataFile"    # Ljava/io/File;

    .line 152
    :try_start_0
    new-instance v0, Lorg/apache/ftpserver/util/BaseProperties;

    invoke-direct {v0}, Lorg/apache/ftpserver/util/BaseProperties;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    .line 154
    if-eqz p1, :cond_2

    .line 155
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->LOG:Lorg/slf4j/Logger;

    const-string v1, "File configured, will try loading"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataFile:Ljava/io/File;

    .line 160
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->LOG:Lorg/slf4j/Logger;

    const-string v1, "File found on file system"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    const/4 v0, 0x0

    .line 163
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 164
    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    invoke-virtual {v1, v0}, Lorg/apache/ftpserver/util/BaseProperties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    :try_start_2
    invoke-static {v0}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    .line 167
    nop

    .line 168
    .end local v0    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 166
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    .line 167
    nop

    .end local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;
    .end local p1    # "userDataFile":Ljava/io/File;
    throw v1

    .line 170
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;
    .restart local p1    # "userDataFile":Ljava/io/File;
    :cond_0
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->LOG:Lorg/slf4j/Logger;

    const-string v1, "File not found on file system, try loading from classpath"

    .line 171
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 174
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 176
    .local v0, "is":Ljava/io/InputStream;
    if-eqz v0, :cond_1

    .line 178
    :try_start_3
    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    invoke-virtual {v1, v0}, Lorg/apache/ftpserver/util/BaseProperties;->load(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 180
    :try_start_4
    invoke-static {v0}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    .line 181
    goto :goto_0

    .line 180
    :catchall_1
    move-exception v1

    invoke-static {v0}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    .line 181
    nop

    .end local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;
    .end local p1    # "userDataFile":Ljava/io/File;
    throw v1

    .line 183
    .restart local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;
    .restart local p1    # "userDataFile":Ljava/io/File;
    :cond_1
    new-instance v1, Lorg/apache/ftpserver/FtpServerConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User data file specified but could not be located, neither on the file system or in the classpath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;
    .end local p1    # "userDataFile":Ljava/io/File;
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 193
    .end local v0    # "is":Ljava/io/InputStream;
    .restart local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;
    .restart local p1    # "userDataFile":Ljava/io/File;
    :cond_2
    :goto_0
    nop

    .line 194
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/ftpserver/FtpServerConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading user data file : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private loadFromUrl(Ljava/net/URL;)V
    .locals 4
    .param p1, "userDataPath"    # Ljava/net/URL;

    .line 198
    :try_start_0
    new-instance v0, Lorg/apache/ftpserver/util/BaseProperties;

    invoke-direct {v0}, Lorg/apache/ftpserver/util/BaseProperties;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    .line 200
    if-eqz p1, :cond_0

    .line 201
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->LOG:Lorg/slf4j/Logger;

    const-string v1, "URL configured, will try loading"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 203
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userUrl:Ljava/net/URL;

    .line 204
    const/4 v0, 0x0

    .line 206
    .local v0, "is":Ljava/io/InputStream;
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 209
    :try_start_1
    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    invoke-virtual {v1, v0}, Lorg/apache/ftpserver/util/BaseProperties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    :try_start_2
    invoke-static {v0}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    .line 212
    goto :goto_0

    .line 211
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    .line 212
    nop

    .end local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;
    .end local p1    # "userDataPath":Ljava/net/URL;
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 217
    .end local v0    # "is":Ljava/io/InputStream;
    .restart local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;
    .restart local p1    # "userDataPath":Ljava/net/URL;
    :cond_0
    :goto_0
    nop

    .line 218
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/ftpserver/FtpServerConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading user data resource : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private saveUserData()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 308
    const-string v0, "Failed saving user data"

    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataFile:Ljava/io/File;

    if-nez v1, :cond_0

    .line 309
    return-void

    .line 312
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 313
    .local v1, "dir":Ljava/io/File;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 314
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "dirName":Ljava/lang/String;
    new-instance v2, Lorg/apache/ftpserver/FtpServerConfigurationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot create directory for user data file : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 320
    .end local v0    # "dirName":Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 322
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 323
    iget-object v3, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    const-string v4, "Generated file - don\'t edit (please)"

    invoke-virtual {v3, v2, v4}, Lorg/apache/ftpserver/util/BaseProperties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    invoke-static {v2}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/OutputStream;)V

    .line 329
    nop

    .line 330
    return-void

    .line 328
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 324
    :catch_0
    move-exception v3

    .line 325
    .local v3, "ex":Ljava/io/IOException;
    :try_start_1
    iget-object v4, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v4, v0, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 326
    new-instance v4, Lorg/apache/ftpserver/ftplet/FtpException;

    invoke-direct {v4, v0, v3}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;
    :goto_1
    invoke-static {v2}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/OutputStream;)V

    .line 329
    throw v0
.end method


# virtual methods
.method public authenticate(Lorg/apache/ftpserver/ftplet/Authentication;)Lorg/apache/ftpserver/ftplet/User;
    .locals 7
    .param p1, "authentication"    # Lorg/apache/ftpserver/ftplet/Authentication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;
        }
    .end annotation

    .line 467
    instance-of v0, p1, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;

    const-string v1, "Authentication failed"

    if-eqz v0, :cond_4

    .line 468
    move-object v0, p1

    check-cast v0, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;

    .line 470
    .local v0, "upauth":Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;
    invoke-virtual {v0}, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;->getUsername()Ljava/lang/String;

    move-result-object v2

    .line 471
    .local v2, "user":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object v3

    .line 473
    .local v3, "password":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 477
    if-nez v3, :cond_0

    .line 478
    const-string v3, ""

    .line 481
    :cond_0
    iget-object v4, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ftpserver.user."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, "userpassword"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ftpserver/util/BaseProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 484
    .local v4, "storedPassword":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 489
    invoke-virtual {p0}, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->getPasswordEncryptor()Lorg/apache/ftpserver/usermanager/PasswordEncryptor;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lorg/apache/ftpserver/usermanager/PasswordEncryptor;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 490
    invoke-virtual {p0, v2}, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->getUserByName(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/User;

    move-result-object v1

    return-object v1

    .line 492
    :cond_1
    new-instance v5, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;

    invoke-direct {v5, v1}, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 486
    :cond_2
    new-instance v5, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;

    invoke-direct {v5, v1}, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 474
    .end local v4    # "storedPassword":Ljava/lang/String;
    :cond_3
    new-instance v4, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;

    invoke-direct {v4, v1}, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 495
    .end local v0    # "upauth":Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;
    .end local v2    # "user":Ljava/lang/String;
    .end local v3    # "password":Ljava/lang/String;
    :cond_4
    instance-of v0, p1, Lorg/apache/ftpserver/usermanager/AnonymousAuthentication;

    if-eqz v0, :cond_6

    .line 496
    const-string v0, "anonymous"

    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->doesExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 497
    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->getUserByName(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/User;

    move-result-object v0

    return-object v0

    .line 499
    :cond_5
    new-instance v0, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;

    invoke-direct {v0, v1}, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authentication not supported by this user manager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete(Ljava/lang/String;)V
    .locals 6
    .param p1, "usrName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ftpserver.user."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "thisPrefix":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    invoke-virtual {v1}, Lorg/apache/ftpserver/util/BaseProperties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 340
    .local v1, "propNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v2, "remKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 342
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, "thisKey":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 344
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    .end local v3    # "thisKey":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 347
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 348
    .local v3, "remKeysIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 349
    iget-object v4, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ftpserver/util/BaseProperties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 352
    :cond_2
    invoke-direct {p0}, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->saveUserData()V

    .line 353
    return-void
.end method

.method public declared-synchronized dispose()V
    .locals 1

    monitor-enter p0

    .line 511
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    invoke-virtual {v0}, Lorg/apache/ftpserver/util/BaseProperties;->clear()V

    .line 513
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    .end local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 510
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doesExist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ftpserver.user."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "homedirectory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    invoke-virtual {v1, v0}, Lorg/apache/ftpserver/util/BaseProperties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAllUserNames()[Ljava/lang/String;
    .locals 9

    .line 392
    const-string v0, ".homedirectory"

    .line 393
    .local v0, "suffix":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v1, "ulst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    invoke-virtual {v2}, Lorg/apache/ftpserver/util/BaseProperties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v2

    .line 395
    .local v2, "allKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    const-string v3, "ftpserver.user."

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 396
    .local v3, "prefixlen":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 397
    .local v4, "suffixlen":I
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 398
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 399
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 400
    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 401
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v4

    .line 402
    .local v8, "endIndex":I
    invoke-virtual {v7, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 403
    .end local v7    # "name":Ljava/lang/String;
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "endIndex":I
    :cond_0
    goto :goto_0

    .line 407
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 408
    new-array v5, v6, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataFile:Ljava/io/File;

    return-object v0
.end method

.method public getUserByName(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/User;
    .locals 11
    .param p1, "userName"    # Ljava/lang/String;

    .line 415
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->doesExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    const/4 v0, 0x0

    return-object v0

    .line 419
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ftpserver.user."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "baseKey":Ljava/lang/String;
    new-instance v1, Lorg/apache/ftpserver/usermanager/impl/BaseUser;

    invoke-direct {v1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;-><init>()V

    .line 421
    .local v1, "user":Lorg/apache/ftpserver/usermanager/impl/BaseUser;
    invoke-virtual {v1, p1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setName(Ljava/lang/String;)V

    .line 422
    iget-object v2, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "enableflag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/apache/ftpserver/util/BaseProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setEnabled(Z)V

    .line 423
    iget-object v2, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "homedirectory"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 424
    const-string v4, "/"

    invoke-virtual {v2, v3, v4}, Lorg/apache/ftpserver/util/BaseProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 423
    invoke-virtual {v1, v2}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setHomeDirectory(Ljava/lang/String;)V

    .line 426
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v2, "authorities":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ftpserver/ftplet/Authority;>;"
    iget-object v3, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "writepermission"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/apache/ftpserver/util/BaseProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 429
    new-instance v3, Lorg/apache/ftpserver/usermanager/impl/WritePermission;

    invoke-direct {v3}, Lorg/apache/ftpserver/usermanager/impl/WritePermission;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_1
    iget-object v3, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "maxloginnumber"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lorg/apache/ftpserver/util/BaseProperties;->getInteger(Ljava/lang/String;I)I

    move-result v3

    .line 434
    .local v3, "maxLogin":I
    iget-object v4, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "maxloginperip"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lorg/apache/ftpserver/util/BaseProperties;->getInteger(Ljava/lang/String;I)I

    move-result v4

    .line 437
    .local v4, "maxLoginPerIP":I
    new-instance v6, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginPermission;

    invoke-direct {v6, v3, v4}, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginPermission;-><init>(II)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    iget-object v6, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "uploadrate"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lorg/apache/ftpserver/util/BaseProperties;->getInteger(Ljava/lang/String;I)I

    move-result v6

    .line 441
    .local v6, "uploadRate":I
    iget-object v7, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "downloadrate"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Lorg/apache/ftpserver/util/BaseProperties;->getInteger(Ljava/lang/String;I)I

    move-result v7

    .line 444
    .local v7, "downloadRate":I
    new-instance v8, Lorg/apache/ftpserver/usermanager/impl/TransferRatePermission;

    invoke-direct {v8, v7, v6}, Lorg/apache/ftpserver/usermanager/impl/TransferRatePermission;-><init>(II)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    invoke-virtual {v1, v2}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setAuthorities(Ljava/util/List;)V

    .line 448
    iget-object v8, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "idletime"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Lorg/apache/ftpserver/util/BaseProperties;->getInteger(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setMaxIdleTime(I)V

    .line 451
    return-object v1
.end method

.method public refresh()V
    .locals 4

    .line 224
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    monitor-enter v0

    .line 225
    :try_start_0
    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->LOG:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refreshing user manager using file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataFile:Ljava/io/File;

    .line 227
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataFile:Ljava/io/File;

    invoke-direct {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->loadFromFile(Ljava/io/File;)V

    goto :goto_0

    .line 232
    :cond_0
    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->LOG:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refreshing user manager using URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userUrl:Ljava/net/URL;

    .line 233
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 232
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userUrl:Ljava/net/URL;

    invoke-direct {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->loadFromUrl(Ljava/net/URL;)V

    .line 236
    :goto_0
    monitor-exit v0

    .line 237
    return-void

    .line 236
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized save(Lorg/apache/ftpserver/ftplet/User;)V
    .locals 7
    .param p1, "usr"    # Lorg/apache/ftpserver/ftplet/User;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    monitor-enter p0

    .line 252
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ftpserver.user."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "thisPrefix":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "userpassword"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->getPassword(Lorg/apache/ftpserver/ftplet/User;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/ftpserver/util/BaseProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 260
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getHomeDirectory()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "home":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 262
    const-string v2, "/"

    move-object v1, v2

    .line 264
    .end local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;
    :cond_0
    iget-object v2, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "homedirectory"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/apache/ftpserver/util/BaseProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 265
    iget-object v2, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "enableflag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getEnabled()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/ftpserver/util/BaseProperties;->setProperty(Ljava/lang/String;Z)V

    .line 266
    iget-object v2, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "writepermission"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/apache/ftpserver/usermanager/impl/WriteRequest;

    invoke-direct {v4}, Lorg/apache/ftpserver/usermanager/impl/WriteRequest;-><init>()V

    .line 267
    invoke-interface {p1, v4}, Lorg/apache/ftpserver/ftplet/User;->authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v5

    .line 266
    :goto_0
    invoke-virtual {v2, v3, v4}, Lorg/apache/ftpserver/util/BaseProperties;->setProperty(Ljava/lang/String;Z)V

    .line 268
    iget-object v2, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "idletime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 269
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getMaxIdleTime()I

    move-result v4

    .line 268
    invoke-virtual {v2, v3, v4}, Lorg/apache/ftpserver/util/BaseProperties;->setProperty(Ljava/lang/String;I)V

    .line 271
    new-instance v2, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;

    invoke-direct {v2}, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;-><init>()V

    .line 272
    .local v2, "transferRateRequest":Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;
    nop

    .line 273
    invoke-interface {p1, v2}, Lorg/apache/ftpserver/ftplet/User;->authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;

    move-result-object v3

    check-cast v3, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;

    move-object v2, v3

    .line 275
    if-eqz v2, :cond_2

    .line 276
    iget-object v3, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "uploadrate"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 277
    invoke-virtual {v2}, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;->getMaxUploadRate()I

    move-result v6

    .line 276
    invoke-virtual {v3, v4, v6}, Lorg/apache/ftpserver/util/BaseProperties;->setProperty(Ljava/lang/String;I)V

    .line 278
    iget-object v3, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "downloadrate"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 279
    invoke-virtual {v2}, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;->getMaxDownloadRate()I

    move-result v6

    .line 278
    invoke-virtual {v3, v4, v6}, Lorg/apache/ftpserver/util/BaseProperties;->setProperty(Ljava/lang/String;I)V

    goto :goto_1

    .line 281
    :cond_2
    iget-object v3, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "uploadrate"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ftpserver/util/BaseProperties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v3, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "downloadrate"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ftpserver/util/BaseProperties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :goto_1
    new-instance v3, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;

    invoke-direct {v3, v5, v5}, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;-><init>(II)V

    .line 288
    .local v3, "concurrentLoginRequest":Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;
    nop

    .line 289
    invoke-interface {p1, v3}, Lorg/apache/ftpserver/ftplet/User;->authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;

    move-result-object v4

    check-cast v4, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;

    move-object v3, v4

    .line 291
    if-eqz v3, :cond_3

    .line 292
    iget-object v4, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "maxloginnumber"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 293
    invoke-virtual {v3}, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->getMaxConcurrentLogins()I

    move-result v6

    .line 292
    invoke-virtual {v4, v5, v6}, Lorg/apache/ftpserver/util/BaseProperties;->setProperty(Ljava/lang/String;I)V

    .line 294
    iget-object v4, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "maxloginperip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 295
    invoke-virtual {v3}, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->getMaxConcurrentLoginsPerIP()I

    move-result v6

    .line 294
    invoke-virtual {v4, v5, v6}, Lorg/apache/ftpserver/util/BaseProperties;->setProperty(Ljava/lang/String;I)V

    goto :goto_2

    .line 297
    :cond_3
    iget-object v4, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "maxloginnumber"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ftpserver/util/BaseProperties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v4, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "maxloginperip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ftpserver/util/BaseProperties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :goto_2
    invoke-direct {p0}, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->saveUserData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    monitor-exit p0

    return-void

    .line 253
    .end local v0    # "thisPrefix":Ljava/lang/String;
    .end local v1    # "home":Ljava/lang/String;
    .end local v2    # "transferRateRequest":Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;
    .end local v3    # "concurrentLoginRequest":Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;
    :cond_4
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "User name is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    .end local p1    # "usr":Lorg/apache/ftpserver/ftplet/User;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
