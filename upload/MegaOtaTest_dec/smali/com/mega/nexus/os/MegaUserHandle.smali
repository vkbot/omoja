.class public final Lcom/mega/nexus/os/MegaUserHandle;
.super Ljava/lang/Object;
.source "MegaUserHandle.java"


# static fields
.field public static final ALL:Landroid/os/UserHandle;

.field public static final CURRENT:Landroid/os/UserHandle;

.field public static final CURRENT_OR_SELF:Landroid/os/UserHandle;

.field public static final CURRENT_OR_SYSTEM:Landroid/os/UserHandle;

.field public static final OWNER:Landroid/os/UserHandle;

.field public static final SYSTEM:Landroid/os/UserHandle;

.field public static final USER_ALL:I = -0x1

.field public static final USER_CURRENT:I = -0x2

.field public static final USER_CURRENT_OR_SELF:I = -0x3

.field public static final USER_CURRENT_OR_SYSTEM:I = -0x2

.field public static final USER_NULL:I = -0x2710

.field public static final USER_OWNER:I

.field public static final USER_SYSTEM:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    sput-object v0, Lcom/mega/nexus/os/MegaUserHandle;->ALL:Landroid/os/UserHandle;

    .line 17
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    sput-object v0, Lcom/mega/nexus/os/MegaUserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 21
    sget-object v0, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    sput-object v0, Lcom/mega/nexus/os/MegaUserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 25
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    sput-object v0, Lcom/mega/nexus/os/MegaUserHandle;->CURRENT_OR_SYSTEM:Landroid/os/UserHandle;

    .line 31
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    sput-object v0, Lcom/mega/nexus/os/MegaUserHandle;->OWNER:Landroid/os/UserHandle;

    .line 35
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    sput-object v0, Lcom/mega/nexus/os/MegaUserHandle;->SYSTEM:Landroid/os/UserHandle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppId(I)I
    .locals 1
    .param p0, "uid"    # I

    .line 42
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    return v0
.end method

.method public static getCallingUserId()I
    .locals 1

    .line 62
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static getIdentifier(Landroid/os/UserHandle;)I
    .locals 1
    .param p0, "user"    # Landroid/os/UserHandle;

    .line 58
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method

.method public static getUserId(I)I
    .locals 1
    .param p0, "uid"    # I

    .line 66
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static isSameApp(II)Z
    .locals 2
    .param p0, "uid1"    # I
    .param p1, "uid2"    # I

    .line 38
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSplitSystemUser()Z
    .locals 1

    .line 46
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v0

    return v0
.end method

.method public static myUserId()I
    .locals 1

    .line 50
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static of(I)Landroid/os/UserHandle;
    .locals 1
    .param p0, "userId"    # I

    .line 54
    if-nez p0, :cond_0

    sget-object v0, Lcom/mega/nexus/os/MegaUserHandle;->SYSTEM:Landroid/os/UserHandle;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    :goto_0
    return-object v0
.end method
