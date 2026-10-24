.class public Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;
.super Ljava/lang/Object;
.source "DbUserManagerFactory.java"

# interfaces
.implements Lorg/apache/ftpserver/usermanager/UserManagerFactory;


# instance fields
.field private adminName:Ljava/lang/String;

.field private authenticateStmt:Ljava/lang/String;

.field private dataSource:Ljavax/sql/DataSource;

.field private deleteUserStmt:Ljava/lang/String;

.field private insertUserStmt:Ljava/lang/String;

.field private isAdminStmt:Ljava/lang/String;

.field private passwordEncryptor:Lorg/apache/ftpserver/usermanager/PasswordEncryptor;

.field private selectAllStmt:Ljava/lang/String;

.field private selectUserStmt:Ljava/lang/String;

.field private updateUserStmt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "admin"

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->adminName:Ljava/lang/String;

    .line 53
    new-instance v0, Lorg/apache/ftpserver/usermanager/Md5PasswordEncryptor;

    invoke-direct {v0}, Lorg/apache/ftpserver/usermanager/Md5PasswordEncryptor;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->passwordEncryptor:Lorg/apache/ftpserver/usermanager/PasswordEncryptor;

    return-void
.end method


# virtual methods
.method public createUserManager()Lorg/apache/ftpserver/ftplet/UserManager;
    .locals 12

    .line 56
    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->dataSource:Ljavax/sql/DataSource;

    if-eqz v1, :cond_7

    .line 60
    iget-object v4, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->insertUserStmt:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 64
    iget-object v5, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->updateUserStmt:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 68
    iget-object v6, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->deleteUserStmt:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 72
    iget-object v3, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->selectUserStmt:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 76
    iget-object v2, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->selectAllStmt:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 80
    iget-object v8, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->isAdminStmt:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 84
    iget-object v7, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->authenticateStmt:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 89
    new-instance v11, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;

    iget-object v9, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->passwordEncryptor:Lorg/apache/ftpserver/usermanager/PasswordEncryptor;

    iget-object v10, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->adminName:Ljava/lang/String;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;-><init>(Ljavax/sql/DataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/usermanager/PasswordEncryptor;Ljava/lang/String;)V

    return-object v11

    .line 85
    :cond_0
    new-instance v0, Lorg/apache/ftpserver/FtpServerConfigurationException;

    const-string v1, "Required authenticate user SQL statement not provided"

    invoke-direct {v0, v1}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    new-instance v0, Lorg/apache/ftpserver/FtpServerConfigurationException;

    const-string v1, "Required is admin user SQL statement not provided"

    invoke-direct {v0, v1}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_2
    new-instance v0, Lorg/apache/ftpserver/FtpServerConfigurationException;

    const-string v1, "Required select all users SQL statement not provided"

    invoke-direct {v0, v1}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_3
    new-instance v0, Lorg/apache/ftpserver/FtpServerConfigurationException;

    const-string v1, "Required select user SQL statement not provided"

    invoke-direct {v0, v1}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_4
    new-instance v0, Lorg/apache/ftpserver/FtpServerConfigurationException;

    const-string v1, "Required delete user SQL statement not provided"

    invoke-direct {v0, v1}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_5
    new-instance v0, Lorg/apache/ftpserver/FtpServerConfigurationException;

    const-string v1, "Required update user SQL statement not provided"

    invoke-direct {v0, v1}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_6
    new-instance v0, Lorg/apache/ftpserver/FtpServerConfigurationException;

    const-string v1, "Required insert user SQL statement not provided"

    invoke-direct {v0, v1}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_7
    new-instance v0, Lorg/apache/ftpserver/FtpServerConfigurationException;

    const-string v1, "Required data source not provided"

    invoke-direct {v0, v1}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAdminName()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->adminName:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSource()Ljavax/sql/DataSource;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->dataSource:Ljavax/sql/DataSource;

    return-object v0
.end method

.method public getPasswordEncryptor()Lorg/apache/ftpserver/usermanager/PasswordEncryptor;
    .locals 1

    .line 279
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->passwordEncryptor:Lorg/apache/ftpserver/usermanager/PasswordEncryptor;

    return-object v0
.end method

.method public getSqlUserAdmin()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->isAdminStmt:Ljava/lang/String;

    return-object v0
.end method

.method public getSqlUserAuthenticate()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->authenticateStmt:Ljava/lang/String;

    return-object v0
.end method

.method public getSqlUserDelete()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->deleteUserStmt:Ljava/lang/String;

    return-object v0
.end method

.method public getSqlUserInsert()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->insertUserStmt:Ljava/lang/String;

    return-object v0
.end method

.method public getSqlUserSelect()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->selectUserStmt:Ljava/lang/String;

    return-object v0
.end method

.method public getSqlUserSelectAll()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->selectAllStmt:Ljava/lang/String;

    return-object v0
.end method

.method public getSqlUserUpdate()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->updateUserStmt:Ljava/lang/String;

    return-object v0
.end method

.method public setAdminName(Ljava/lang/String;)V
    .locals 0
    .param p1, "adminName"    # Ljava/lang/String;

    .line 110
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->adminName:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setDataSource(Ljavax/sql/DataSource;)V
    .locals 0
    .param p1, "dataSource"    # Ljavax/sql/DataSource;

    .line 129
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->dataSource:Ljavax/sql/DataSource;

    .line 130
    return-void
.end method

.method public setPasswordEncryptor(Lorg/apache/ftpserver/usermanager/PasswordEncryptor;)V
    .locals 0
    .param p1, "passwordEncryptor"    # Lorg/apache/ftpserver/usermanager/PasswordEncryptor;

    .line 288
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->passwordEncryptor:Lorg/apache/ftpserver/usermanager/PasswordEncryptor;

    .line 289
    return-void
.end method

.method public setSqlUserAdmin(Ljava/lang/String;)V
    .locals 0
    .param p1, "sql"    # Ljava/lang/String;

    .line 270
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->isAdminStmt:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setSqlUserAuthenticate(Ljava/lang/String;)V
    .locals 0
    .param p1, "sql"    # Ljava/lang/String;

    .line 249
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->authenticateStmt:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setSqlUserDelete(Ljava/lang/String;)V
    .locals 0
    .param p1, "sql"    # Ljava/lang/String;

    .line 169
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->deleteUserStmt:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setSqlUserInsert(Ljava/lang/String;)V
    .locals 0
    .param p1, "sql"    # Ljava/lang/String;

    .line 149
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->insertUserStmt:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setSqlUserSelect(Ljava/lang/String;)V
    .locals 0
    .param p1, "sql"    # Ljava/lang/String;

    .line 209
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->selectUserStmt:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setSqlUserSelectAll(Ljava/lang/String;)V
    .locals 0
    .param p1, "sql"    # Ljava/lang/String;

    .line 229
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->selectAllStmt:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setSqlUserUpdate(Ljava/lang/String;)V
    .locals 0
    .param p1, "sql"    # Ljava/lang/String;

    .line 189
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->updateUserStmt:Ljava/lang/String;

    .line 190
    return-void
.end method
