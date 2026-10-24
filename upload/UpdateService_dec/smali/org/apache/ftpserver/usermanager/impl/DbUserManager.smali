.class public Lorg/apache/ftpserver/usermanager/impl/DbUserManager;
.super Lorg/apache/ftpserver/usermanager/impl/AbstractUserManager;
.source "DbUserManager.java"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;

.field private authenticateStmt:Ljava/lang/String;

.field private dataSource:Ljavax/sql/DataSource;

.field private deleteUserStmt:Ljava/lang/String;

.field private insertUserStmt:Ljava/lang/String;

.field private isAdminStmt:Ljava/lang/String;

.field private selectAllStmt:Ljava/lang/String;

.field private selectUserStmt:Ljava/lang/String;

.field private updateUserStmt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/sql/DataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/usermanager/PasswordEncryptor;Ljava/lang/String;)V
    .locals 4
    .param p1, "dataSource"    # Ljavax/sql/DataSource;
    .param p2, "selectAllStmt"    # Ljava/lang/String;
    .param p3, "selectUserStmt"    # Ljava/lang/String;
    .param p4, "insertUserStmt"    # Ljava/lang/String;
    .param p5, "updateUserStmt"    # Ljava/lang/String;
    .param p6, "deleteUserStmt"    # Ljava/lang/String;
    .param p7, "authenticateStmt"    # Ljava/lang/String;
    .param p8, "isAdminStmt"    # Ljava/lang/String;
    .param p9, "passwordEncryptor"    # Lorg/apache/ftpserver/usermanager/PasswordEncryptor;
    .param p10, "adminName"    # Ljava/lang/String;

    .line 85
    const-string v0, "Failed to open connection to user database"

    invoke-direct {p0, p10, p9}, Lorg/apache/ftpserver/usermanager/impl/AbstractUserManager;-><init>(Ljava/lang/String;Lorg/apache/ftpserver/usermanager/PasswordEncryptor;)V

    .line 59
    const-class v1, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->LOG:Lorg/slf4j/Logger;

    .line 86
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->dataSource:Ljavax/sql/DataSource;

    .line 87
    iput-object p2, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->selectAllStmt:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->selectUserStmt:Ljava/lang/String;

    .line 89
    iput-object p4, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->insertUserStmt:Ljava/lang/String;

    .line 90
    iput-object p5, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->updateUserStmt:Ljava/lang/String;

    .line 91
    iput-object p6, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->deleteUserStmt:Ljava/lang/String;

    .line 92
    iput-object p7, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->authenticateStmt:Ljava/lang/String;

    .line 93
    iput-object p8, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->isAdminStmt:Ljava/lang/String;

    .line 95
    const/4 v1, 0x0

    .line 98
    .local v1, "con":Ljava/sql/Connection;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->createConnection()Ljava/sql/Connection;

    move-result-object v2

    move-object v1, v2

    .line 100
    iget-object v2, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Database connection opened."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-virtual {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Connection;)V

    .line 107
    nop

    .line 108
    return-void

    .line 106
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v2

    .line 102
    .local v2, "ex":Ljava/sql/SQLException;
    :try_start_1
    iget-object v3, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v3, v0, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    new-instance v3, Lorg/apache/ftpserver/FtpServerConfigurationException;

    invoke-direct {v3, v0, v2}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "con":Ljava/sql/Connection;
    .end local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/DbUserManager;
    .end local p1    # "dataSource":Ljavax/sql/DataSource;
    .end local p2    # "selectAllStmt":Ljava/lang/String;
    .end local p3    # "selectUserStmt":Ljava/lang/String;
    .end local p4    # "insertUserStmt":Ljava/lang/String;
    .end local p5    # "updateUserStmt":Ljava/lang/String;
    .end local p6    # "deleteUserStmt":Ljava/lang/String;
    .end local p7    # "authenticateStmt":Ljava/lang/String;
    .end local p8    # "isAdminStmt":Ljava/lang/String;
    .end local p9    # "passwordEncryptor":Lorg/apache/ftpserver/usermanager/PasswordEncryptor;
    .end local p10    # "adminName":Ljava/lang/String;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .end local v2    # "ex":Ljava/sql/SQLException;
    .restart local v1    # "con":Ljava/sql/Connection;
    .restart local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/DbUserManager;
    .restart local p1    # "dataSource":Ljavax/sql/DataSource;
    .restart local p2    # "selectAllStmt":Ljava/lang/String;
    .restart local p3    # "selectUserStmt":Ljava/lang/String;
    .restart local p4    # "insertUserStmt":Ljava/lang/String;
    .restart local p5    # "updateUserStmt":Ljava/lang/String;
    .restart local p6    # "deleteUserStmt":Ljava/lang/String;
    .restart local p7    # "authenticateStmt":Ljava/lang/String;
    .restart local p8    # "isAdminStmt":Ljava/lang/String;
    .restart local p9    # "passwordEncryptor":Lorg/apache/ftpserver/usermanager/PasswordEncryptor;
    .restart local p10    # "adminName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Connection;)V

    .line 107
    throw v0
.end method

.method private closeQuitely(Ljava/sql/ResultSet;)V
    .locals 1
    .param p1, "rs"    # Ljava/sql/ResultSet;

    .line 454
    if-eqz p1, :cond_0

    .line 456
    :try_start_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    goto :goto_0

    .line 457
    :catch_0
    move-exception v0

    .line 461
    :cond_0
    :goto_0
    return-void
.end method

.method private closeQuitely(Ljava/sql/Statement;)V
    .locals 2
    .param p1, "stmt"    # Ljava/sql/Statement;

    .line 438
    if-eqz p1, :cond_0

    .line 439
    const/4 v0, 0x0

    .line 441
    .local v0, "con":Ljava/sql/Connection;
    :try_start_0
    invoke-interface {p1}, Ljava/sql/Statement;->getConnection()Ljava/sql/Connection;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 443
    goto :goto_0

    .line 442
    :catch_0
    move-exception v1

    .line 445
    :goto_0
    :try_start_1
    invoke-interface {p1}, Ljava/sql/Statement;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 448
    goto :goto_1

    .line 446
    :catch_1
    move-exception v1

    .line 449
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Connection;)V

    .line 451
    .end local v0    # "con":Ljava/sql/Connection;
    :cond_0
    return-void
.end method

.method private escapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "input"    # Ljava/lang/String;

    .line 685
    if-nez p1, :cond_0

    .line 686
    return-object p1

    .line 689
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 690
    .local v0, "valBuf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 691
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 692
    .local v2, "ch":C
    const/16 v3, 0x27

    const/16 v4, 0x5c

    if-eq v2, v3, :cond_1

    if-eq v2, v4, :cond_1

    const/16 v3, 0x24

    if-eq v2, v3, :cond_1

    const/16 v3, 0x5e

    if-eq v2, v3, :cond_1

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_1

    const/16 v3, 0x5d

    if-eq v2, v3, :cond_1

    const/16 v3, 0x7b

    if-eq v2, v3, :cond_1

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_2

    .line 695
    :cond_1
    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 696
    add-int/lit8 v1, v1, 0x1

    .line 690
    .end local v2    # "ch":C
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 699
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private selectUserByName(Ljava/lang/String;)Lorg/apache/ftpserver/usermanager/impl/BaseUser;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 475
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 476
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "userid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->selectUserStmt:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/apache/ftpserver/util/StringUtils;->replaceString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 478
    .local v1, "sql":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v3, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 480
    const/4 v3, 0x0

    .line 481
    .local v3, "stmt":Ljava/sql/Statement;
    const/4 v4, 0x0

    .line 484
    .local v4, "rs":Ljava/sql/ResultSet;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->createConnection()Ljava/sql/Connection;

    move-result-object v5

    invoke-interface {v5}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v5

    move-object v3, v5

    .line 485
    invoke-interface {v3, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v5

    move-object v4, v5

    .line 488
    const/4 v5, 0x0

    .line 489
    .local v5, "thisUser":Lorg/apache/ftpserver/usermanager/impl/BaseUser;
    invoke-interface {v4}, Ljava/sql/ResultSet;->next()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 490
    new-instance v6, Lorg/apache/ftpserver/usermanager/impl/BaseUser;

    invoke-direct {v6}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;-><init>()V

    move-object v5, v6

    .line 491
    invoke-interface {v4, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setName(Ljava/lang/String;)V

    .line 492
    const-string v2, "userpassword"

    invoke-interface {v4, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setPassword(Ljava/lang/String;)V

    .line 493
    const-string v2, "homedirectory"

    invoke-interface {v4, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setHomeDirectory(Ljava/lang/String;)V

    .line 494
    const-string v2, "enableflag"

    invoke-interface {v4, v2}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v5, v2}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setEnabled(Z)V

    .line 495
    const-string v2, "idletime"

    invoke-interface {v4, v2}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setMaxIdleTime(I)V

    .line 497
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v2, "authorities":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ftpserver/ftplet/Authority;>;"
    const-string v6, "writepermission"

    invoke-interface {v4, v6}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 499
    new-instance v6, Lorg/apache/ftpserver/usermanager/impl/WritePermission;

    invoke-direct {v6}, Lorg/apache/ftpserver/usermanager/impl/WritePermission;-><init>()V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    :cond_0
    new-instance v6, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginPermission;

    const-string v7, "maxloginnumber"

    .line 503
    invoke-interface {v4, v7}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "maxloginperip"

    .line 504
    invoke-interface {v4, v8}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v6, v7, v8}, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginPermission;-><init>(II)V

    .line 502
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    new-instance v6, Lorg/apache/ftpserver/usermanager/impl/TransferRatePermission;

    const-string v7, "downloadrate"

    .line 506
    invoke-interface {v4, v7}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "uploadrate"

    .line 507
    invoke-interface {v4, v8}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v6, v7, v8}, Lorg/apache/ftpserver/usermanager/impl/TransferRatePermission;-><init>(II)V

    .line 505
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    invoke-virtual {v5, v2}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setAuthorities(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    .end local v2    # "authorities":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ftpserver/ftplet/Authority;>;"
    :cond_1
    nop

    .line 514
    invoke-direct {p0, v4}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/ResultSet;)V

    .line 515
    invoke-direct {p0, v3}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Statement;)V

    .line 511
    return-object v5

    .line 514
    .end local v5    # "thisUser":Lorg/apache/ftpserver/usermanager/impl/BaseUser;
    :catchall_0
    move-exception v2

    invoke-direct {p0, v4}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/ResultSet;)V

    .line 515
    invoke-direct {p0, v3}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Statement;)V

    .line 516
    throw v2
.end method


# virtual methods
.method public authenticate(Lorg/apache/ftpserver/ftplet/Authentication;)Lorg/apache/ftpserver/ftplet/User;
    .locals 10
    .param p1, "authentication"    # Lorg/apache/ftpserver/ftplet/Authentication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;
        }
    .end annotation

    .line 609
    const-string v0, "anonymous"

    instance-of v1, p1, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;

    const-string v2, "Authentication failed"

    if-eqz v1, :cond_4

    .line 610
    move-object v0, p1

    check-cast v0, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;

    .line 612
    .local v0, "upauth":Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;
    invoke-virtual {v0}, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 613
    .local v1, "user":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object v3

    .line 615
    .local v3, "password":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 619
    if-nez v3, :cond_0

    .line 620
    const-string v3, ""

    .line 623
    :cond_0
    const/4 v4, 0x0

    .line 624
    .local v4, "stmt":Ljava/sql/Statement;
    const/4 v5, 0x0

    .line 628
    .local v5, "rs":Ljava/sql/ResultSet;
    :try_start_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 629
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "userid"

    invoke-direct {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    iget-object v7, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->authenticateStmt:Ljava/lang/String;

    invoke-static {v7, v6}, Lorg/apache/ftpserver/util/StringUtils;->replaceString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 631
    .local v7, "sql":Ljava/lang/String;
    iget-object v8, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v8, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 634
    invoke-virtual {p0}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->createConnection()Ljava/sql/Connection;

    move-result-object v8

    invoke-interface {v8}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v8

    move-object v4, v8

    .line 635
    invoke-interface {v4, v7}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v8

    move-object v5, v8

    .line 636
    invoke-interface {v5}, Ljava/sql/ResultSet;->next()Z

    move-result v8
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_2

    .line 638
    :try_start_1
    const-string v8, "userpassword"

    invoke-interface {v5, v8}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 639
    .local v8, "storedPassword":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->getPasswordEncryptor()Lorg/apache/ftpserver/usermanager/PasswordEncryptor;

    move-result-object v9

    invoke-interface {v9, v3, v8}, Lorg/apache/ftpserver/usermanager/PasswordEncryptor;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 640
    invoke-virtual {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->getUserByName(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/User;

    move-result-object v2
    :try_end_1
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 658
    invoke-direct {p0, v5}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/ResultSet;)V

    .line 659
    invoke-direct {p0, v4}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Statement;)V

    .line 640
    return-object v2

    .line 642
    :cond_1
    :try_start_2
    new-instance v9, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;

    invoke-direct {v9, v2}, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "upauth":Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;
    .end local v1    # "user":Ljava/lang/String;
    .end local v3    # "password":Ljava/lang/String;
    .end local v4    # "stmt":Ljava/sql/Statement;
    .end local v5    # "rs":Ljava/sql/ResultSet;
    .end local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "sql":Ljava/lang/String;
    .end local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/DbUserManager;
    .end local p1    # "authentication":Lorg/apache/ftpserver/ftplet/Authentication;
    throw v9
    :try_end_2
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 645
    .end local v8    # "storedPassword":Ljava/lang/String;
    .restart local v0    # "upauth":Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;
    .restart local v1    # "user":Ljava/lang/String;
    .restart local v3    # "password":Ljava/lang/String;
    .restart local v4    # "stmt":Ljava/sql/Statement;
    .restart local v5    # "rs":Ljava/sql/ResultSet;
    .restart local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v7    # "sql":Ljava/lang/String;
    .restart local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/DbUserManager;
    .restart local p1    # "authentication":Lorg/apache/ftpserver/ftplet/Authentication;
    :catch_0
    move-exception v8

    .line 646
    .local v8, "e":Lorg/apache/ftpserver/ftplet/FtpException;
    :try_start_3
    new-instance v9, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;

    invoke-direct {v9, v2, v8}, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "upauth":Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;
    .end local v1    # "user":Ljava/lang/String;
    .end local v3    # "password":Ljava/lang/String;
    .end local v4    # "stmt":Ljava/sql/Statement;
    .end local v5    # "rs":Ljava/sql/ResultSet;
    .end local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/DbUserManager;
    .end local p1    # "authentication":Lorg/apache/ftpserver/ftplet/Authentication;
    throw v9

    .line 650
    .end local v8    # "e":Lorg/apache/ftpserver/ftplet/FtpException;
    .restart local v0    # "upauth":Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;
    .restart local v1    # "user":Ljava/lang/String;
    .restart local v3    # "password":Ljava/lang/String;
    .restart local v4    # "stmt":Ljava/sql/Statement;
    .restart local v5    # "rs":Ljava/sql/ResultSet;
    .restart local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/DbUserManager;
    .restart local p1    # "authentication":Lorg/apache/ftpserver/ftplet/Authentication;
    :cond_2
    new-instance v8, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;

    invoke-direct {v8, v2}, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "upauth":Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;
    .end local v1    # "user":Ljava/lang/String;
    .end local v3    # "password":Ljava/lang/String;
    .end local v4    # "stmt":Ljava/sql/Statement;
    .end local v5    # "rs":Ljava/sql/ResultSet;
    .end local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/DbUserManager;
    .end local p1    # "authentication":Lorg/apache/ftpserver/ftplet/Authentication;
    throw v8
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 658
    .end local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "sql":Ljava/lang/String;
    .restart local v0    # "upauth":Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;
    .restart local v1    # "user":Ljava/lang/String;
    .restart local v3    # "password":Ljava/lang/String;
    .restart local v4    # "stmt":Ljava/sql/Statement;
    .restart local v5    # "rs":Ljava/sql/ResultSet;
    .restart local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/DbUserManager;
    .restart local p1    # "authentication":Lorg/apache/ftpserver/ftplet/Authentication;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 653
    :catch_1
    move-exception v6

    .line 654
    .local v6, "ex":Ljava/sql/SQLException;
    :try_start_4
    iget-object v7, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->LOG:Lorg/slf4j/Logger;

    const-string v8, "DbUserManager.authenticate()"

    invoke-interface {v7, v8, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 655
    new-instance v7, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;

    invoke-direct {v7, v2, v6}, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "upauth":Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;
    .end local v1    # "user":Ljava/lang/String;
    .end local v3    # "password":Ljava/lang/String;
    .end local v4    # "stmt":Ljava/sql/Statement;
    .end local v5    # "rs":Ljava/sql/ResultSet;
    .end local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/DbUserManager;
    .end local p1    # "authentication":Lorg/apache/ftpserver/ftplet/Authentication;
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 658
    .end local v6    # "ex":Ljava/sql/SQLException;
    .restart local v0    # "upauth":Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;
    .restart local v1    # "user":Ljava/lang/String;
    .restart local v3    # "password":Ljava/lang/String;
    .restart local v4    # "stmt":Ljava/sql/Statement;
    .restart local v5    # "rs":Ljava/sql/ResultSet;
    .restart local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/DbUserManager;
    .restart local p1    # "authentication":Lorg/apache/ftpserver/ftplet/Authentication;
    :goto_0
    invoke-direct {p0, v5}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/ResultSet;)V

    .line 659
    invoke-direct {p0, v4}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Statement;)V

    .line 660
    throw v2

    .line 616
    .end local v4    # "stmt":Ljava/sql/Statement;
    .end local v5    # "rs":Ljava/sql/ResultSet;
    :cond_3
    new-instance v4, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;

    invoke-direct {v4, v2}, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 661
    .end local v0    # "upauth":Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;
    .end local v1    # "user":Ljava/lang/String;
    .end local v3    # "password":Ljava/lang/String;
    :cond_4
    instance-of v1, p1, Lorg/apache/ftpserver/usermanager/AnonymousAuthentication;

    if-eqz v1, :cond_6

    .line 663
    :try_start_5
    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->doesExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 664
    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->getUserByName(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/User;

    move-result-object v0

    return-object v0

    .line 666
    :cond_5
    new-instance v0, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;

    invoke-direct {v0, v2}, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/DbUserManager;
    .end local p1    # "authentication":Lorg/apache/ftpserver/ftplet/Authentication;
    throw v0
    :try_end_5
    .catch Lorg/apache/ftpserver/ftplet/AuthenticationFailedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_5 .. :try_end_5} :catch_2

    .line 671
    .restart local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/DbUserManager;
    .restart local p1    # "authentication":Lorg/apache/ftpserver/ftplet/Authentication;
    :catch_2
    move-exception v0

    .line 672
    .local v0, "e":Lorg/apache/ftpserver/ftplet/FtpException;
    new-instance v1, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;

    invoke-direct {v1, v2, v0}, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 669
    .end local v0    # "e":Lorg/apache/ftpserver/ftplet/FtpException;
    :catch_3
    move-exception v0

    .line 670
    .local v0, "e":Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;
    throw v0

    .line 676
    .end local v0    # "e":Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authentication not supported by this user manager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected closeQuitely(Ljava/sql/Connection;)V
    .locals 1
    .param p1, "con"    # Ljava/sql/Connection;

    .line 464
    if-eqz p1, :cond_0

    .line 466
    :try_start_0
    invoke-interface {p1}, Ljava/sql/Connection;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    goto :goto_0

    .line 467
    :catch_0
    move-exception v0

    .line 471
    :cond_0
    :goto_0
    return-void
.end method

.method protected createConnection()Ljava/sql/Connection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->dataSource:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 309
    .local v0, "connection":Ljava/sql/Connection;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 311
    return-object v0
.end method

.method public delete(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 320
    const-string v0, "DbUserManager.delete()"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 321
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "userid"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v2, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->deleteUserStmt:Ljava/lang/String;

    invoke-static {v2, v1}, Lorg/apache/ftpserver/util/StringUtils;->replaceString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "sql":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v3, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 326
    const/4 v3, 0x0

    .line 328
    .local v3, "stmt":Ljava/sql/Statement;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->createConnection()Ljava/sql/Connection;

    move-result-object v4

    invoke-interface {v4}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v4

    move-object v3, v4

    .line 329
    invoke-interface {v3, v2}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    invoke-direct {p0, v3}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Statement;)V

    .line 335
    nop

    .line 336
    return-void

    .line 334
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 330
    :catch_0
    move-exception v4

    .line 331
    .local v4, "ex":Ljava/sql/SQLException;
    :try_start_1
    iget-object v5, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v5, v0, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 332
    new-instance v5, Lorg/apache/ftpserver/ftplet/FtpException;

    invoke-direct {v5, v0, v4}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "sql":Ljava/lang/String;
    .end local v3    # "stmt":Ljava/sql/Statement;
    .end local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/DbUserManager;
    .end local p1    # "name":Ljava/lang/String;
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    .end local v4    # "ex":Ljava/sql/SQLException;
    .restart local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "sql":Ljava/lang/String;
    .restart local v3    # "stmt":Ljava/sql/Statement;
    .restart local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/DbUserManager;
    .restart local p1    # "name":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v3}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Statement;)V

    .line 335
    throw v0
.end method

.method public doesExist(Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 549
    const-string v0, "DbUserManager.doesExist()"

    const/4 v1, 0x0

    .line 550
    .local v1, "stmt":Ljava/sql/Statement;
    const/4 v2, 0x0

    .line 554
    .local v2, "rs":Ljava/sql/ResultSet;
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 555
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "userid"

    invoke-direct {p0, p1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    iget-object v4, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->selectUserStmt:Ljava/lang/String;

    invoke-static {v4, v3}, Lorg/apache/ftpserver/util/StringUtils;->replaceString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 557
    .local v4, "sql":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v5, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p0}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->createConnection()Ljava/sql/Connection;

    move-result-object v5

    invoke-interface {v5}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v5

    move-object v1, v5

    .line 561
    invoke-interface {v1, v4}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v5

    move-object v2, v5

    .line 562
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    invoke-direct {p0, v2}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/ResultSet;)V

    .line 568
    invoke-direct {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Statement;)V

    .line 562
    return v0

    .line 567
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 563
    :catch_0
    move-exception v3

    .line 564
    .local v3, "ex":Ljava/sql/SQLException;
    :try_start_1
    iget-object v4, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v4, v0, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 565
    new-instance v4, Lorg/apache/ftpserver/ftplet/FtpException;

    invoke-direct {v4, v0, v3}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "stmt":Ljava/sql/Statement;
    .end local v2    # "rs":Ljava/sql/ResultSet;
    .end local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/DbUserManager;
    .end local p1    # "name":Ljava/lang/String;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 567
    .end local v3    # "ex":Ljava/sql/SQLException;
    .restart local v1    # "stmt":Ljava/sql/Statement;
    .restart local v2    # "rs":Ljava/sql/ResultSet;
    .restart local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/DbUserManager;
    .restart local p1    # "name":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v2}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/ResultSet;)V

    .line 568
    invoke-direct {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Statement;)V

    .line 569
    throw v0
.end method

.method public getAllUserNames()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 577
    const-string v0, "DbUserManager.getAllUserNames()"

    const/4 v1, 0x0

    .line 578
    .local v1, "stmt":Ljava/sql/Statement;
    const/4 v2, 0x0

    .line 582
    .local v2, "rs":Ljava/sql/ResultSet;
    :try_start_0
    iget-object v3, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->selectAllStmt:Ljava/lang/String;

    .line 583
    .local v3, "sql":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v4, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p0}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->createConnection()Ljava/sql/Connection;

    move-result-object v4

    invoke-interface {v4}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v4

    move-object v1, v4

    .line 587
    invoke-interface {v1, v3}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v4

    move-object v2, v4

    .line 590
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 591
    .local v4, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 592
    const-string v5, "userid"

    invoke-interface {v2, v5}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 594
    :cond_0
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    invoke-direct {p0, v2}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/ResultSet;)V

    .line 600
    invoke-direct {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Statement;)V

    .line 594
    return-object v5

    .line 599
    .end local v3    # "sql":Ljava/lang/String;
    .end local v4    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 595
    :catch_0
    move-exception v3

    .line 596
    .local v3, "ex":Ljava/sql/SQLException;
    :try_start_1
    iget-object v4, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v4, v0, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 597
    new-instance v4, Lorg/apache/ftpserver/ftplet/FtpException;

    invoke-direct {v4, v0, v3}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "stmt":Ljava/sql/Statement;
    .end local v2    # "rs":Ljava/sql/ResultSet;
    .end local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/DbUserManager;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 599
    .end local v3    # "ex":Ljava/sql/SQLException;
    .restart local v1    # "stmt":Ljava/sql/Statement;
    .restart local v2    # "rs":Ljava/sql/ResultSet;
    .restart local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/DbUserManager;
    :goto_1
    invoke-direct {p0, v2}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/ResultSet;)V

    .line 600
    invoke-direct {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Statement;)V

    .line 601
    throw v0
.end method

.method public getDataSource()Ljavax/sql/DataSource;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->dataSource:Ljavax/sql/DataSource;

    return-object v0
.end method

.method public getSqlUserAdmin()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->isAdminStmt:Ljava/lang/String;

    return-object v0
.end method

.method public getSqlUserAuthenticate()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->authenticateStmt:Ljava/lang/String;

    return-object v0
.end method

.method public getSqlUserDelete()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->deleteUserStmt:Ljava/lang/String;

    return-object v0
.end method

.method public getSqlUserInsert()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->insertUserStmt:Ljava/lang/String;

    return-object v0
.end method

.method public getSqlUserSelect()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->selectUserStmt:Ljava/lang/String;

    return-object v0
.end method

.method public getSqlUserSelectAll()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->selectAllStmt:Ljava/lang/String;

    return-object v0
.end method

.method public getSqlUserUpdate()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->updateUserStmt:Ljava/lang/String;

    return-object v0
.end method

.method public getUserByName(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/User;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 523
    const-string v0, "DbUserManager.getUserByName()"

    const/4 v1, 0x0

    .line 524
    .local v1, "stmt":Ljava/sql/Statement;
    const/4 v2, 0x0

    .line 527
    .local v2, "rs":Ljava/sql/ResultSet;
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->selectUserByName(Ljava/lang/String;)Lorg/apache/ftpserver/usermanager/impl/BaseUser;

    move-result-object v3

    .line 529
    .local v3, "user":Lorg/apache/ftpserver/usermanager/impl/BaseUser;
    if-eqz v3, :cond_0

    .line 531
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setPassword(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    :cond_0
    nop

    .line 540
    invoke-direct {p0, v2}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/ResultSet;)V

    .line 541
    invoke-direct {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Statement;)V

    .line 533
    return-object v3

    .line 540
    .end local v3    # "user":Lorg/apache/ftpserver/usermanager/impl/BaseUser;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 536
    :catch_0
    move-exception v3

    .line 537
    .local v3, "ex":Ljava/sql/SQLException;
    :try_start_1
    iget-object v4, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v4, v0, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 538
    new-instance v4, Lorg/apache/ftpserver/ftplet/FtpException;

    invoke-direct {v4, v0, v3}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "stmt":Ljava/sql/Statement;
    .end local v2    # "rs":Ljava/sql/ResultSet;
    .end local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/DbUserManager;
    .end local p1    # "name":Ljava/lang/String;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 540
    .end local v3    # "ex":Ljava/sql/SQLException;
    .restart local v1    # "stmt":Ljava/sql/Statement;
    .restart local v2    # "rs":Ljava/sql/ResultSet;
    .restart local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/DbUserManager;
    .restart local p1    # "name":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v2}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/ResultSet;)V

    .line 541
    invoke-direct {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Statement;)V

    .line 542
    throw v0
.end method

.method public isAdmin(Ljava/lang/String;)Z
    .locals 6
    .param p1, "login"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 277
    const-string v0, "DbUserManager.isAdmin()"

    if-nez p1, :cond_0

    .line 278
    const/4 v0, 0x0

    return v0

    .line 281
    :cond_0
    const/4 v1, 0x0

    .line 282
    .local v1, "stmt":Ljava/sql/Statement;
    const/4 v2, 0x0

    .line 286
    .local v2, "rs":Ljava/sql/ResultSet;
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 287
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "userid"

    invoke-direct {p0, p1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v4, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->isAdminStmt:Ljava/lang/String;

    invoke-static {v4, v3}, Lorg/apache/ftpserver/util/StringUtils;->replaceString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, "sql":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v5, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->createConnection()Ljava/sql/Connection;

    move-result-object v5

    invoke-interface {v5}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v5

    move-object v1, v5

    .line 293
    invoke-interface {v1, v4}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v5

    move-object v2, v5

    .line 294
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    invoke-direct {p0, v2}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/ResultSet;)V

    .line 300
    invoke-direct {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Statement;)V

    .line 294
    return v0

    .line 299
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 295
    :catch_0
    move-exception v3

    .line 296
    .local v3, "ex":Ljava/sql/SQLException;
    :try_start_1
    iget-object v4, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v4, v0, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    new-instance v4, Lorg/apache/ftpserver/ftplet/FtpException;

    invoke-direct {v4, v0, v3}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "stmt":Ljava/sql/Statement;
    .end local v2    # "rs":Ljava/sql/ResultSet;
    .end local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/DbUserManager;
    .end local p1    # "login":Ljava/lang/String;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    .end local v3    # "ex":Ljava/sql/SQLException;
    .restart local v1    # "stmt":Ljava/sql/Statement;
    .restart local v2    # "rs":Ljava/sql/ResultSet;
    .restart local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/DbUserManager;
    .restart local p1    # "login":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v2}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/ResultSet;)V

    .line 300
    invoke-direct {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Statement;)V

    .line 301
    throw v0
.end method

.method public save(Lorg/apache/ftpserver/ftplet/User;)V
    .locals 11
    .param p1, "user"    # Lorg/apache/ftpserver/ftplet/User;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 343
    const-string v0, "DbUserManager.save()"

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 347
    const/4 v1, 0x0

    .line 351
    .local v1, "stmt":Ljava/sql/Statement;
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 352
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "userid"

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const/4 v3, 0x0

    .line 355
    .local v3, "password":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getPassword()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 357
    invoke-virtual {p0}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->getPasswordEncryptor()Lorg/apache/ftpserver/usermanager/PasswordEncryptor;

    move-result-object v4

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ftpserver/usermanager/PasswordEncryptor;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, v4

    goto :goto_0

    .line 361
    :cond_0
    const/4 v4, 0x0

    .line 364
    .local v4, "rs":Ljava/sql/ResultSet;
    :try_start_1
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->selectUserByName(Ljava/lang/String;)Lorg/apache/ftpserver/usermanager/impl/BaseUser;

    move-result-object v5

    .line 366
    .local v5, "userWithPassword":Lorg/apache/ftpserver/ftplet/User;
    if-eqz v5, :cond_1

    .line 368
    invoke-interface {v5}, Lorg/apache/ftpserver/ftplet/User;->getPassword()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v6

    .line 371
    .end local v5    # "userWithPassword":Lorg/apache/ftpserver/ftplet/User;
    :cond_1
    :try_start_2
    invoke-direct {p0, v4}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/ResultSet;)V

    .line 372
    nop

    .line 374
    .end local v4    # "rs":Ljava/sql/ResultSet;
    :goto_0
    const-string v4, "userpassword"

    invoke-direct {p0, v3}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getHomeDirectory()Ljava/lang/String;

    move-result-object v4

    .line 378
    .local v4, "home":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 379
    const-string v5, "/"

    move-object v4, v5

    .line 381
    :cond_2
    const-string v5, "homedirectory"

    invoke-direct {p0, v4}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v5, "enableflag"

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getEnabled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string v5, "writepermission"

    new-instance v6, Lorg/apache/ftpserver/usermanager/impl/WriteRequest;

    invoke-direct {v6}, Lorg/apache/ftpserver/usermanager/impl/WriteRequest;-><init>()V

    .line 385
    invoke-interface {p1, v6}, Lorg/apache/ftpserver/ftplet/User;->authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    move v6, v7

    .line 384
    :goto_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v5, "idletime"

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getMaxIdleTime()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    new-instance v5, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;

    invoke-direct {v5}, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;-><init>()V

    .line 389
    .local v5, "transferRateRequest":Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;
    nop

    .line 390
    invoke-interface {p1, v5}, Lorg/apache/ftpserver/ftplet/User;->authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;

    move-result-object v6

    check-cast v6, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v5, v6

    .line 392
    const-string v6, "downloadrate"

    const-string v8, "uploadrate"

    if-eqz v5, :cond_4

    .line 393
    nop

    .line 394
    :try_start_3
    invoke-virtual {v5}, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;->getMaxUploadRate()I

    move-result v9

    .line 393
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    nop

    .line 396
    invoke-virtual {v5}, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;->getMaxDownloadRate()I

    move-result v8

    .line 395
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 398
    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :goto_2
    new-instance v6, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;

    invoke-direct {v6, v7, v7}, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;-><init>(II)V

    .line 405
    .local v6, "concurrentLoginRequest":Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;
    nop

    .line 406
    invoke-interface {p1, v6}, Lorg/apache/ftpserver/ftplet/User;->authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;

    move-result-object v8

    check-cast v8, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v6, v8

    .line 408
    const-string v8, "maxloginperip"

    const-string v9, "maxloginnumber"

    if-eqz v6, :cond_5

    .line 409
    nop

    .line 410
    :try_start_4
    invoke-virtual {v6}, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->getMaxConcurrentLogins()I

    move-result v7

    .line 409
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    nop

    .line 412
    invoke-virtual {v6}, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->getMaxConcurrentLoginsPerIP()I

    move-result v7

    .line 411
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 414
    :cond_5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    :goto_3
    const/4 v7, 0x0

    .line 419
    .local v7, "sql":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->doesExist(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 420
    iget-object v8, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->insertUserStmt:Ljava/lang/String;

    invoke-static {v8, v2}, Lorg/apache/ftpserver/util/StringUtils;->replaceString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    goto :goto_4

    .line 422
    :cond_6
    iget-object v8, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->updateUserStmt:Ljava/lang/String;

    invoke-static {v8, v2}, Lorg/apache/ftpserver/util/StringUtils;->replaceString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 424
    :goto_4
    iget-object v8, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v8, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->createConnection()Ljava/sql/Connection;

    move-result-object v8

    invoke-interface {v8}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v8

    move-object v1, v8

    .line 428
    invoke-interface {v1, v7}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 433
    nop

    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "password":Ljava/lang/String;
    .end local v4    # "home":Ljava/lang/String;
    .end local v5    # "transferRateRequest":Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;
    .end local v6    # "concurrentLoginRequest":Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;
    .end local v7    # "sql":Ljava/lang/String;
    invoke-direct {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Statement;)V

    .line 434
    nop

    .line 435
    return-void

    .line 371
    .restart local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3    # "password":Ljava/lang/String;
    .local v4, "rs":Ljava/sql/ResultSet;
    :catchall_0
    move-exception v5

    :try_start_5
    invoke-direct {p0, v4}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/ResultSet;)V

    .line 372
    nop

    .end local v1    # "stmt":Ljava/sql/Statement;
    .end local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/DbUserManager;
    .end local p1    # "user":Lorg/apache/ftpserver/ftplet/User;
    throw v5
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 433
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "password":Ljava/lang/String;
    .end local v4    # "rs":Ljava/sql/ResultSet;
    .restart local v1    # "stmt":Ljava/sql/Statement;
    .restart local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/DbUserManager;
    .restart local p1    # "user":Lorg/apache/ftpserver/ftplet/User;
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 429
    :catch_0
    move-exception v2

    .line 430
    .local v2, "ex":Ljava/sql/SQLException;
    :try_start_6
    iget-object v3, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v3, v0, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 431
    new-instance v3, Lorg/apache/ftpserver/ftplet/FtpException;

    invoke-direct {v3, v0, v2}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "stmt":Ljava/sql/Statement;
    .end local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/DbUserManager;
    .end local p1    # "user":Lorg/apache/ftpserver/ftplet/User;
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 433
    .end local v2    # "ex":Ljava/sql/SQLException;
    .restart local v1    # "stmt":Ljava/sql/Statement;
    .restart local p0    # "this":Lorg/apache/ftpserver/usermanager/impl/DbUserManager;
    .restart local p1    # "user":Lorg/apache/ftpserver/ftplet/User;
    :goto_5
    invoke-direct {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Statement;)V

    .line 434
    throw v0

    .line 344
    .end local v1    # "stmt":Ljava/sql/Statement;
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "User name is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDataSource(Ljavax/sql/DataSource;)V
    .locals 0
    .param p1, "dataSource"    # Ljavax/sql/DataSource;

    .line 126
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->dataSource:Ljavax/sql/DataSource;

    .line 127
    return-void
.end method

.method public setSqlUserAdmin(Ljava/lang/String;)V
    .locals 0
    .param p1, "sql"    # Ljava/lang/String;

    .line 267
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->isAdminStmt:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setSqlUserAuthenticate(Ljava/lang/String;)V
    .locals 0
    .param p1, "sql"    # Ljava/lang/String;

    .line 246
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->authenticateStmt:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setSqlUserDelete(Ljava/lang/String;)V
    .locals 0
    .param p1, "sql"    # Ljava/lang/String;

    .line 166
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->deleteUserStmt:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setSqlUserInsert(Ljava/lang/String;)V
    .locals 0
    .param p1, "sql"    # Ljava/lang/String;

    .line 146
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->insertUserStmt:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setSqlUserSelect(Ljava/lang/String;)V
    .locals 0
    .param p1, "sql"    # Ljava/lang/String;

    .line 206
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->selectUserStmt:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setSqlUserSelectAll(Ljava/lang/String;)V
    .locals 0
    .param p1, "sql"    # Ljava/lang/String;

    .line 226
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->selectAllStmt:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setSqlUserUpdate(Ljava/lang/String;)V
    .locals 0
    .param p1, "sql"    # Ljava/lang/String;

    .line 186
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->updateUserStmt:Ljava/lang/String;

    .line 187
    return-void
.end method
