.class public Lcom/android/managedprovisioning/parser/MessageParser;
.super Ljava/lang/Object;
.source "MessageParser.java"

# interfaces
.implements Lcom/android/managedprovisioning/parser/ProvisioningDataParser;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUtils:Lcom/android/managedprovisioning/common/Utils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    new-instance v0, Lcom/android/managedprovisioning/common/Utils;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/Utils;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/parser/MessageParser;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/common/Utils;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/common/Utils;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/managedprovisioning/parser/MessageParser;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/common/Utils;

    iput-object p1, p0, Lcom/android/managedprovisioning/parser/MessageParser;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    return-void
.end method


# virtual methods
.method getParser(Landroid/content/Intent;)Lcom/android/managedprovisioning/parser/ProvisioningDataParser;
    .locals 1

    .line 59
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 60
    new-instance p1, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;

    iget-object v0, p0, Lcom/android/managedprovisioning/parser/MessageParser;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/managedprovisioning/parser/MessageParser;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    invoke-direct {p1, v0, p0}, Lcom/android/managedprovisioning/parser/PropertiesProvisioningDataParser;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/common/Utils;)V

    return-object p1

    .line 62
    :cond_0
    new-instance p1, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;

    iget-object v0, p0, Lcom/android/managedprovisioning/parser/MessageParser;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/managedprovisioning/parser/MessageParser;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    invoke-direct {p1, v0, p0}, Lcom/android/managedprovisioning/parser/ExtrasProvisioningDataParser;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/common/Utils;)V

    return-object p1
.end method

.method public parse(Landroid/content/Intent;)Lcom/android/managedprovisioning/model/ProvisioningParams;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/parser/MessageParser;->getParser(Landroid/content/Intent;)Lcom/android/managedprovisioning/parser/ProvisioningDataParser;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/managedprovisioning/parser/ProvisioningDataParser;->parse(Landroid/content/Intent;)Lcom/android/managedprovisioning/model/ProvisioningParams;

    move-result-object p0

    return-object p0
.end method
