.class public Lcom/android/role/persistence/RolesPersistenceImpl;
.super Ljava/lang/Object;
.source "RolesPersistenceImpl.java"

# interfaces
.implements Lcom/android/role/persistence/RolesPersistence;


# static fields
.field private static final APEX_MODULE_NAME:Ljava/lang/String; = "com.android.permission"

.field private static final ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field private static final ATTRIBUTE_PACKAGES_HASH:Ljava/lang/String; = "packagesHash"

.field private static final ATTRIBUTE_VERSION:Ljava/lang/String; = "version"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final ROLES_FILE_NAME:Ljava/lang/String; = "roles.xml"

.field private static final TAG_HOLDER:Ljava/lang/String; = "holder"

.field private static final TAG_ROLE:Ljava/lang/String; = "role"

.field private static final TAG_ROLES:Ljava/lang/String; = "roles"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/android/role/persistence/RolesPersistenceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/role/persistence/RolesPersistenceImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFile(Landroid/os/UserHandle;)Ljava/io/File;
    .locals 4
    .param p0, "user"    # Landroid/os/UserHandle;

    .line 214
    const-string v0, "com.android.permission"

    invoke-static {v0}, Landroid/content/ApexEnvironment;->getApexEnvironment(Ljava/lang/String;)Landroid/content/ApexEnvironment;

    move-result-object v0

    .line 215
    .local v0, "apexEnvironment":Landroid/content/ApexEnvironment;
    invoke-virtual {v0, p0}, Landroid/content/ApexEnvironment;->getDeviceProtectedDataDirForUser(Landroid/os/UserHandle;)Ljava/io/File;

    move-result-object v1

    .line 216
    .local v1, "dataDirectory":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "roles.xml"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private static parseRoleHolders(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Set;
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 130
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 133
    .local v0, "roleHolders":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 134
    .local v1, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    if-eq v3, v2, :cond_3

    .line 135
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move v5, v3

    .local v5, "depth":I
    if-ge v3, v1, :cond_1

    const/4 v3, 0x3

    if-eq v4, v3, :cond_3

    .line 136
    :cond_1
    if-gt v5, v1, :cond_0

    const/4 v3, 0x2

    if-eq v4, v3, :cond_2

    .line 137
    goto :goto_0

    .line 140
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "holder"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    const/4 v3, 0x0

    const-string v6, "name"

    invoke-interface {p0, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "roleHolder":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    .end local v3    # "roleHolder":Ljava/lang/String;
    goto :goto_0

    .line 145
    .end local v5    # "depth":I
    :cond_3
    return-object v0
.end method

.method private static parseRoles(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/role/persistence/RolesState;
    .locals 10
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 104
    const/4 v0, 0x0

    const-string v1, "version"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 105
    .local v1, "version":I
    const-string v2, "packagesHash"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "packagesHash":Ljava/lang/String;
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 110
    .local v3, "roles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 111
    .local v4, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v7, v6

    .local v7, "type":I
    if-eq v6, v5, :cond_3

    .line 112
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    move v8, v6

    .local v8, "depth":I
    if-ge v6, v4, :cond_1

    const/4 v6, 0x3

    if-eq v7, v6, :cond_3

    .line 113
    :cond_1
    if-gt v8, v4, :cond_0

    const/4 v6, 0x2

    if-eq v7, v6, :cond_2

    .line 114
    goto :goto_0

    .line 117
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v9, "role"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 118
    const-string v6, "name"

    invoke-interface {p0, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, "roleName":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/role/persistence/RolesPersistenceImpl;->parseRoleHolders(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Set;

    move-result-object v9

    .line 120
    .local v9, "roleHolders":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .end local v6    # "roleName":Ljava/lang/String;
    .end local v9    # "roleHolders":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 124
    .end local v8    # "depth":I
    :cond_3
    new-instance v0, Lcom/android/role/persistence/RolesState;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/role/persistence/RolesState;-><init>(ILjava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method private static parseXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/role/persistence/RolesState;
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 87
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 88
    .local v0, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    if-eq v2, v1, :cond_3

    .line 89
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move v4, v2

    .local v4, "depth":I
    if-ge v2, v0, :cond_1

    const/4 v2, 0x3

    if-eq v3, v2, :cond_3

    .line 90
    :cond_1
    if-gt v4, v0, :cond_0

    const/4 v2, 0x2

    if-eq v3, v2, :cond_2

    .line 91
    goto :goto_0

    .line 94
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "roles"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    invoke-static {p0}, Lcom/android/role/persistence/RolesPersistenceImpl;->parseRoles(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/role/persistence/RolesState;

    move-result-object v1

    return-object v1

    .line 98
    .end local v4    # "depth":I
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing <roles> in roles.xml"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static serializeRoleHolders(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Set;)V
    .locals 5
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    .local p1, "roleHolders":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 201
    .local v1, "roleHolder":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "holder"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 202
    const-string v4, "name"

    invoke-interface {p0, v2, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 203
    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 204
    .end local v1    # "roleHolder":Ljava/lang/String;
    goto :goto_0

    .line 205
    :cond_0
    return-void
.end method

.method private static serializeRoles(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/role/persistence/RolesState;)V
    .locals 10
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "roles"    # Lcom/android/role/persistence/RolesState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    const/4 v0, 0x0

    const-string v1, "roles"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 178
    invoke-virtual {p1}, Lcom/android/role/persistence/RolesState;->getVersion()I

    move-result v2

    .line 179
    .local v2, "version":I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "version"

    invoke-interface {p0, v0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 180
    invoke-virtual {p1}, Lcom/android/role/persistence/RolesState;->getPackagesHash()Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "packagesHash":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 182
    const-string v4, "packagesHash"

    invoke-interface {p0, v0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 185
    :cond_0
    invoke-virtual {p1}, Lcom/android/role/persistence/RolesState;->getRoles()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 186
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 187
    .local v6, "roleName":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 189
    .local v7, "roleHolders":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v8, "role"

    invoke-interface {p0, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 190
    const-string v9, "name"

    invoke-interface {p0, v0, v9, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 191
    invoke-static {p0, v7}, Lcom/android/role/persistence/RolesPersistenceImpl;->serializeRoleHolders(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Set;)V

    .line 192
    invoke-interface {p0, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 193
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v6    # "roleName":Ljava/lang/String;
    .end local v7    # "roleHolders":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 195
    :cond_1
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 196
    return-void
.end method


# virtual methods
.method public deleteForUser(Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 209
    invoke-static {p1}, Lcom/android/role/persistence/RolesPersistenceImpl;->getFile(Landroid/os/UserHandle;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 210
    return-void
.end method

.method public readForUser(Landroid/os/UserHandle;)Lcom/android/role/persistence/RolesState;
    .locals 5
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 69
    invoke-static {p1}, Lcom/android/role/persistence/RolesPersistenceImpl;->getFile(Landroid/os/UserHandle;)Ljava/io/File;

    move-result-object v0

    .line 70
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .local v2, "inputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 72
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v3, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 73
    invoke-static {v3}, Lcom/android/role/persistence/RolesPersistenceImpl;->parseXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/role/persistence/RolesState;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 73
    :cond_0
    return-object v4

    .line 70
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/io/File;
    .end local p0    # "this":Lcom/android/role/persistence/RolesPersistenceImpl;
    .end local p1    # "user":Landroid/os/UserHandle;
    :cond_1
    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 77
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v0    # "file":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/role/persistence/RolesPersistenceImpl;
    .restart local p1    # "user":Landroid/os/UserHandle;
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read roles.xml: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 74
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 75
    .local v2, "e":Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/android/role/persistence/RolesPersistenceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v4, "roles.xml not found"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-object v1
.end method

.method public writeForUser(Lcom/android/role/persistence/RolesState;Landroid/os/UserHandle;)V
    .locals 7
    .param p1, "roles"    # Lcom/android/role/persistence/RolesState;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 150
    invoke-static {p2}, Lcom/android/role/persistence/RolesPersistenceImpl;->getFile(Landroid/os/UserHandle;)Ljava/io/File;

    move-result-object v0

    .line 151
    .local v0, "file":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 152
    .local v1, "atomicFile":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 154
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 156
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 157
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 158
    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 159
    const/4 v4, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 161
    invoke-static {v3, p1}, Lcom/android/role/persistence/RolesPersistenceImpl;->serializeRoles(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/role/persistence/RolesState;)V

    .line 163
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 164
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_0

    .line 170
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 165
    :catch_0
    move-exception v3

    .line 166
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/android/role/persistence/RolesPersistenceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to write roles.xml, restoring backup: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v2}, Lcom/android/permission/persistence/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 171
    nop

    .line 172
    return-void

    .line 170
    :goto_1
    invoke-static {v2}, Lcom/android/permission/persistence/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 171
    throw v3
.end method
