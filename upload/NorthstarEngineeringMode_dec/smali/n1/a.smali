.class public final Ln1/a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/display/AudioActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/display/AudioActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Ln1/a;->a:Lcom/mega/engineeringmode/function/display/AudioActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object p0, p0, Ln1/a;->a:Lcom/mega/engineeringmode/function/display/AudioActivity;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->l:Landroid/content/ContentResolver;

    const/4 p2, -0x1

    const/4 v0, -0x2

    const-string v1, "mega_android_power_status"

    invoke-static {p1, v1, p2, v0}, Lt2/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const-string/jumbo p2, "power status change, show clock activity. power status: "

    const-string v0, "AudioActivity"

    invoke-static {p2, p1, v0}, La4/a;->m(Ljava/lang/String;ILjava/lang/String;)V

    const/16 p2, 0x8

    if-eq p1, p2, :cond_0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->finish()V

    :cond_0
    return-void
.end method
