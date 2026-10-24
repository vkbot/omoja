.class public Lcom/android/permission/persistence/RuntimePermissionsPersistenceImpl;
.super Ljava/lang/Object;
.source "RuntimePermissionsPersistenceImpl.java"

# interfaces
.implements Lcom/android/permission/persistence/RuntimePermissionsPersistence;


# static fields
.field private static final APEX_MODULE_NAME:Ljava/lang/String; = "com.android.permission"

.field private static final ATTRIBUTE_FINGERPRINT:Ljava/lang/String; = "fingerprint"

.field private static final ATTRIBUTE_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTRIBUTE_GRANTED:Ljava/lang/String; = "granted"

.field private static final ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field private static final ATTRIBUTE_VERSION:Ljava/lang/String; = "version"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final RUNTIME_PERMISSIONS_FILE_NAME:Ljava/lang/String; = "runtime-permissions.xml"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_PERMISSION:Ljava/lang/String; = "permission"

.field private static final TAG_RUNTIME_PERMISSIONS:Ljava/lang/String; = "runtime-permissions"

.field private static final TAG_SHARED_USER:Ljava/lang/String; = "shared-user"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/android/permission/persistence/RuntimePermissionsPersistenceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/permission/persistence/RuntimePermissionsPersistenceImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFile(Landroid/os/UserHandle;)Ljava/io/File;
    .locals 4
    .param p0, "user"    # Landroid/os/UserHandle;

    .line 261
    const-string v0, "com.android.permission"

    invoke-static {v0}, Landroid/content/ApexEnvironment;->getApexEnvironment(Ljava/lang/String;)Landroid/content/ApexEnvironment;

    move-result-object v0

    .line 262
    .local v0, "apexEnvironment":Landroid/content/ApexEnvironment;
    invoke-virtual {v0, p0}, Landroid/content/ApexEnvironment;->getDeviceProtectedDataDirForUser(Landroid/os/UserHandle;)Ljava/io/File;

    move-result-object v1

    .line 263
    .local v1, "dataDirectory":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "runtime-permissions.xml"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private static parsePermissions(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 154
    .local v1, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    if-eq v3, v2, :cond_3

    .line 155
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move v5, v3

    .local v5, "depth":I
    if-ge v3, v1, :cond_1

    const/4 v3, 0x3

    if-eq v4, v3, :cond_3

    .line 156
    :cond_1
    if-gt v5, v1, :cond_0

    const/4 v3, 0x2

    if-eq v4, v3, :cond_2

    .line 157
    goto :goto_0

    .line 160
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "permission"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    const/4 v3, 0x0

    const-string v6, "name"

    invoke-interface {p0, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 162
    .local v6, "name":Ljava/lang/String;
    const-string v7, "granted"

    invoke-interface {p0, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 164
    .local v7, "granted":Z
    const-string v8, "flags"

    invoke-interface {p0, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v8, 0x10

    invoke-static {v3, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 166
    .local v3, "flags":I
    new-instance v8, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;

    invoke-direct {v8, v6, v7, v3}, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;-><init>(Ljava/lang/String;ZI)V

    .line 168
    .local v8, "permission":Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v3    # "flags":I
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "granted":Z
    .end local v8    # "permission":Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;
    goto :goto_0

    .line 171
    .end local v5    # "depth":I
    :cond_3
    return-object v0
.end method

.method private static parseRuntimePermissions(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/permission/persistence/RuntimePermissionsState;
    .locals 14
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 107
    const/4 v0, 0x0

    const-string v1, "version"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "versionValue":Ljava/lang/String;
    const/4 v2, -0x1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 109
    :cond_0
    move v3, v2

    :goto_0
    nop

    .line 110
    .local v3, "version":I
    const-string v4, "fingerprint"

    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, "fingerprint":Ljava/lang/String;
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 114
    .local v5, "packagePermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;>;"
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 118
    .local v6, "sharedUserPermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    .line 119
    .local v7, "innerDepth":I
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v10, v9

    .local v10, "type":I
    if-eq v9, v8, :cond_9

    .line 120
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    move v11, v9

    .local v11, "depth":I
    if-ge v9, v7, :cond_2

    const/4 v9, 0x3

    if-eq v10, v9, :cond_9

    .line 121
    :cond_2
    if-gt v11, v7, :cond_1

    const/4 v9, 0x2

    if-eq v10, v9, :cond_3

    .line 122
    goto :goto_1

    .line 125
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v12

    const v13, -0x301acbba

    if-eq v12, v13, :cond_6

    const v13, 0x1cf15833

    if-eq v12, v13, :cond_5

    :cond_4
    goto :goto_2

    :cond_5
    const-string v12, "shared-user"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v9, v8

    goto :goto_3

    :cond_6
    const-string v12, "package"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x0

    goto :goto_3

    :goto_2
    move v9, v2

    :goto_3
    const-string v12, "name"

    if-eqz v9, :cond_8

    if-eq v9, v8, :cond_7

    goto :goto_4

    .line 134
    :cond_7
    invoke-interface {p0, v0, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 135
    .local v9, "sharedUserName":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/permission/persistence/RuntimePermissionsPersistenceImpl;->parsePermissions(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v12

    .line 137
    .local v12, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;"
    invoke-interface {v6, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    goto :goto_4

    .line 127
    .end local v9    # "sharedUserName":Ljava/lang/String;
    .end local v12    # "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;"
    :cond_8
    invoke-interface {p0, v0, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 128
    .local v9, "packageName":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/permission/persistence/RuntimePermissionsPersistenceImpl;->parsePermissions(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v12

    .line 130
    .restart local v12    # "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;"
    invoke-interface {v5, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    nop

    .line 138
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v12    # "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;"
    :goto_4
    goto :goto_1

    .line 143
    .end local v11    # "depth":I
    :cond_9
    new-instance v0, Lcom/android/permission/persistence/RuntimePermissionsState;

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/android/permission/persistence/RuntimePermissionsState;-><init>(ILjava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method private static parseXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/permission/persistence/RuntimePermissionsState;
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 89
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 90
    .local v0, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    if-eq v2, v1, :cond_3

    .line 91
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move v4, v2

    .local v4, "depth":I
    if-ge v2, v0, :cond_1

    const/4 v2, 0x3

    if-eq v3, v2, :cond_3

    .line 92
    :cond_1
    if-gt v4, v0, :cond_0

    const/4 v2, 0x2

    if-eq v3, v2, :cond_2

    .line 93
    goto :goto_0

    .line 96
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "runtime-permissions"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    invoke-static {p0}, Lcom/android/permission/persistence/RuntimePermissionsPersistenceImpl;->parseRuntimePermissions(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/permission/persistence/RuntimePermissionsState;

    move-result-object v1

    return-object v1

    .line 100
    .end local v4    # "depth":I
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing <runtime-permissions> in runtime-permissions.xml"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static serializePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .locals 7
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List<",
            "Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 240
    .local v0, "permissionsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 241
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;

    .line 243
    .local v2, "permissionState":Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;
    const/4 v3, 0x0

    const-string v4, "permission"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 244
    invoke-virtual {v2}, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    invoke-interface {p0, v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 245
    nop

    .line 246
    invoke-virtual {v2}, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->isGranted()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->getFlags()I

    move-result v5

    const/high16 v6, 0x10000

    and-int/2addr v5, v6

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 245
    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    const-string v6, "granted"

    invoke-interface {p0, v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 248
    nop

    .line 249
    invoke-virtual {v2}, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->getFlags()I

    move-result v5

    .line 248
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "flags"

    invoke-interface {p0, v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 250
    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 240
    .end local v2    # "permissionState":Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private static serializeRuntimePermissions(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/permission/persistence/RuntimePermissionsState;)V
    .locals 10
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "runtimePermissions"    # Lcom/android/permission/persistence/RuntimePermissionsState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    const/4 v0, 0x0

    const-string v1, "runtime-permissions"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 205
    invoke-virtual {p1}, Lcom/android/permission/persistence/RuntimePermissionsState;->getVersion()I

    move-result v2

    .line 206
    .local v2, "version":I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "version"

    invoke-interface {p0, v0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 207
    invoke-virtual {p1}, Lcom/android/permission/persistence/RuntimePermissionsState;->getFingerprint()Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, "fingerprint":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 209
    const-string v4, "fingerprint"

    invoke-interface {p0, v0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 213
    :cond_0
    invoke-virtual {p1}, Lcom/android/permission/persistence/RuntimePermissionsState;->getPackagePermissions()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "name"

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 214
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 215
    .local v7, "packageName":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 217
    .local v8, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;"
    const-string v9, "package"

    invoke-interface {p0, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    invoke-interface {p0, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 219
    invoke-static {p0, v8}, Lcom/android/permission/persistence/RuntimePermissionsPersistenceImpl;->serializePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 220
    invoke-interface {p0, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 221
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;>;"
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;"
    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {p1}, Lcom/android/permission/persistence/RuntimePermissionsState;->getSharedUserPermissions()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 225
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 226
    .local v7, "sharedUserName":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 228
    .restart local v8    # "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;"
    const-string v9, "shared-user"

    invoke-interface {p0, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 229
    invoke-interface {p0, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 230
    invoke-static {p0, v8}, Lcom/android/permission/persistence/RuntimePermissionsPersistenceImpl;->serializePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 231
    invoke-interface {p0, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 232
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;>;"
    .end local v7    # "sharedUserName":Ljava/lang/String;
    .end local v8    # "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;"
    goto :goto_1

    .line 234
    :cond_2
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 235
    return-void
.end method


# virtual methods
.method public deleteForUser(Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 256
    invoke-static {p1}, Lcom/android/permission/persistence/RuntimePermissionsPersistenceImpl;->getFile(Landroid/os/UserHandle;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 257
    return-void
.end method

.method public readForUser(Landroid/os/UserHandle;)Lcom/android/permission/persistence/RuntimePermissionsState;
    .locals 5
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 71
    invoke-static {p1}, Lcom/android/permission/persistence/RuntimePermissionsPersistenceImpl;->getFile(Landroid/os/UserHandle;)Ljava/io/File;

    move-result-object v0

    .line 72
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

    .line 73
    .local v2, "inputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 74
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v3, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 75
    invoke-static {v3}, Lcom/android/permission/persistence/RuntimePermissionsPersistenceImpl;->parseXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/permission/persistence/RuntimePermissionsState;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 75
    :cond_0
    return-object v4

    .line 72
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
    .end local p0    # "this":Lcom/android/permission/persistence/RuntimePermissionsPersistenceImpl;
    .end local p1    # "user":Landroid/os/UserHandle;
    :cond_1
    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 79
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v0    # "file":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/permission/persistence/RuntimePermissionsPersistenceImpl;
    .restart local p1    # "user":Landroid/os/UserHandle;
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read runtime-permissions.xml: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 76
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 77
    .local v2, "e":Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/android/permission/persistence/RuntimePermissionsPersistenceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v4, "runtime-permissions.xml not found"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-object v1
.end method

.method public writeForUser(Lcom/android/permission/persistence/RuntimePermissionsState;Landroid/os/UserHandle;)V
    .locals 7
    .param p1, "runtimePermissions"    # Lcom/android/permission/persistence/RuntimePermissionsState;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 177
    invoke-static {p2}, Lcom/android/permission/persistence/RuntimePermissionsPersistenceImpl;->getFile(Landroid/os/UserHandle;)Ljava/io/File;

    move-result-object v0

    .line 178
    .local v0, "file":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 179
    .local v1, "atomicFile":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 181
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 183
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 184
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 185
    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 186
    const/4 v4, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 188
    invoke-static {v3, p1}, Lcom/android/permission/persistence/RuntimePermissionsPersistenceImpl;->serializeRuntimePermissions(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/permission/persistence/RuntimePermissionsState;)V

    .line 190
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 191
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_0

    .line 197
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 192
    :catch_0
    move-exception v3

    .line 193
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/android/permission/persistence/RuntimePermissionsPersistenceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to write runtime-permissions.xml, restoring backup: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v2}, Lcom/android/permission/persistence/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 198
    nop

    .line 199
    return-void

    .line 197
    :goto_1
    invoke-static {v2}, Lcom/android/permission/persistence/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 198
    throw v3
.end method
