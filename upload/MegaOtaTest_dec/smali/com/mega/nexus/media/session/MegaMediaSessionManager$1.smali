.class Lcom/mega/nexus/media/session/MegaMediaSessionManager$1;
.super Ljava/lang/Object;
.source "MegaMediaSessionManager.java"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnMediaKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/nexus/media/session/MegaMediaSessionManager;->setOnMediaKeyListener(Landroid/media/session/MediaSessionManager;Lcom/mega/nexus/media/session/MegaMediaSessionManager$OnMediaKeyListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/mega/nexus/media/session/MegaMediaSessionManager$OnMediaKeyListener;


# direct methods
.method constructor <init>(Lcom/mega/nexus/media/session/MegaMediaSessionManager$OnMediaKeyListener;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/mega/nexus/media/session/MegaMediaSessionManager$1;->val$listener:Lcom/mega/nexus/media/session/MegaMediaSessionManager$OnMediaKeyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 20
    iget-object v0, p0, Lcom/mega/nexus/media/session/MegaMediaSessionManager$1;->val$listener:Lcom/mega/nexus/media/session/MegaMediaSessionManager$OnMediaKeyListener;

    invoke-interface {v0, p1}, Lcom/mega/nexus/media/session/MegaMediaSessionManager$OnMediaKeyListener;->onMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
