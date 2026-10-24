.class final Lcom/mega/nexus/media/MegaCarAudioManager$Holder;
.super Ljava/lang/Object;
.source "MegaCarAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/nexus/media/MegaCarAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/mega/nexus/media/MegaCarAudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/mega/nexus/media/MegaCarAudioManager;

    invoke-direct {v0}, Lcom/mega/nexus/media/MegaCarAudioManager;-><init>()V

    sput-object v0, Lcom/mega/nexus/media/MegaCarAudioManager$Holder;->INSTANCE:Lcom/mega/nexus/media/MegaCarAudioManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/mega/nexus/media/MegaCarAudioManager;
    .locals 1

    .line 13
    sget-object v0, Lcom/mega/nexus/media/MegaCarAudioManager$Holder;->INSTANCE:Lcom/mega/nexus/media/MegaCarAudioManager;

    return-object v0
.end method
