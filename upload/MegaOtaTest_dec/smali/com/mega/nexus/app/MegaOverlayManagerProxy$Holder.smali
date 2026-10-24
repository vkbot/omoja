.class final Lcom/mega/nexus/app/MegaOverlayManagerProxy$Holder;
.super Ljava/lang/Object;
.source "MegaOverlayManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/nexus/app/MegaOverlayManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/mega/nexus/app/MegaOverlayManagerProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lcom/mega/nexus/app/MegaOverlayManagerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mega/nexus/app/MegaOverlayManagerProxy;-><init>(Lcom/mega/nexus/app/MegaOverlayManagerProxy$1;)V

    sput-object v0, Lcom/mega/nexus/app/MegaOverlayManagerProxy$Holder;->INSTANCE:Lcom/mega/nexus/app/MegaOverlayManagerProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/mega/nexus/app/MegaOverlayManagerProxy;
    .locals 1

    .line 12
    sget-object v0, Lcom/mega/nexus/app/MegaOverlayManagerProxy$Holder;->INSTANCE:Lcom/mega/nexus/app/MegaOverlayManagerProxy;

    return-object v0
.end method
