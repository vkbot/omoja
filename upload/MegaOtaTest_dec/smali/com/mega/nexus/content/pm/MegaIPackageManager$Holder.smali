.class final Lcom/mega/nexus/content/pm/MegaIPackageManager$Holder;
.super Ljava/lang/Object;
.source "MegaIPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/nexus/content/pm/MegaIPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/mega/nexus/content/pm/MegaIPackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/mega/nexus/content/pm/MegaIPackageManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mega/nexus/content/pm/MegaIPackageManager;-><init>(Lcom/mega/nexus/content/pm/MegaIPackageManager$1;)V

    sput-object v0, Lcom/mega/nexus/content/pm/MegaIPackageManager$Holder;->INSTANCE:Lcom/mega/nexus/content/pm/MegaIPackageManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/mega/nexus/content/pm/MegaIPackageManager;
    .locals 1

    .line 16
    sget-object v0, Lcom/mega/nexus/content/pm/MegaIPackageManager$Holder;->INSTANCE:Lcom/mega/nexus/content/pm/MegaIPackageManager;

    return-object v0
.end method
