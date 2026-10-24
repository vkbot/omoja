.class public final Lcom/mega/engineeringmode/function/display/AudioActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/display/AudioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/display/AudioActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/display/AudioActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/display/AudioActivity$b;->a:Lcom/mega/engineeringmode/function/display/AudioActivity;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const-string p1, "AudioActivity"

    const-string/jumbo p2, "onError"

    invoke-static {p1, p2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/display/AudioActivity$b;->a:Lcom/mega/engineeringmode/function/display/AudioActivity;

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->finish()V

    const/4 p0, 0x0

    return p0
.end method
