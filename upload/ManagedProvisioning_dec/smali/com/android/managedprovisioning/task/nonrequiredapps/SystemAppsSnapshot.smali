.class public Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;
.super Ljava/lang/Object;
.source "SystemAppsSnapshot.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field private final mUtils:Lcom/android/managedprovisioning/common/Utils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 59
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    new-instance v1, Lcom/android/managedprovisioning/common/Utils;

    invoke-direct {v1}, Lcom/android/managedprovisioning/common/Utils;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Lcom/android/managedprovisioning/common/Utils;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Lcom/android/managedprovisioning/common/Utils;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;->mContext:Landroid/content/Context;

    .line 66
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/IPackageManager;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 67
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/common/Utils;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    return-void
.end method

.method public static getFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 164
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "system_apps_v2"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getLegacyFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 168
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "system_apps"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSystemAppsFile(Landroid/content/Context;I)Ljava/io/File;
    .locals 2

    const-string v0, "user"

    .line 155
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 156
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 160
    new-instance p1, Ljava/io/File;

    invoke-static {p0}, Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;->getFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ".xml"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1

    .line 158
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid userId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readSystemApps(Ljava/io/File;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 121
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 125
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 127
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    const/4 v1, 0x0

    .line 128
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 129
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 132
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 133
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 134
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_5

    :cond_2
    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    goto :goto_0

    .line 138
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v3, "value"

    .line 140
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "XmlPullParserException trying to read the system apps"

    .line 149
    invoke-static {v0, p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v0, "IOException trying to read the system apps"

    .line 147
    invoke-static {v0, p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object p0
.end method

.method private writeSystemApps(Ljava/util/Set;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const-string p0, "item"

    const-string v0, "system-apps"

    .line 101
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 102
    new-instance p2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {p2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string v2, "utf-8"

    .line 103
    invoke-interface {p2, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 104
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-interface {p2, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 105
    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 106
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 107
    invoke-interface {p2, v3, p0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "value"

    .line 108
    invoke-interface {p2, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    invoke-interface {p2, v3, p0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 111
    :cond_0
    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 112
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 113
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "IOException trying to write the system apps"

    .line 115
    invoke-static {p1, p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getSnapshot(I)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;->getSystemAppsFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;->readSystemApps(Ljava/io/File;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public hasSnapshot(I)Z
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;->getSystemAppsFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public takeNewSnapshot(I)V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;->getSystemAppsFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 96
    iget-object v1, p0, Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v2, p0, Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v1, v2, p1}, Lcom/android/managedprovisioning/common/Utils;->getCurrentSystemApps(Landroid/content/pm/IPackageManager;I)Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;->writeSystemApps(Ljava/util/Set;Ljava/io/File;)V

    return-void
.end method
