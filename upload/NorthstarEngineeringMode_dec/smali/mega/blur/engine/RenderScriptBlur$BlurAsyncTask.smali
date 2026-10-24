.class final Lmega/blur/engine/RenderScriptBlur$BlurAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/blur/engine/RenderScriptBlur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BlurAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lmega/blur/engine/BlurEngine$Callback;

.field private final mInBitmap:Landroid/graphics/Bitmap;

.field private final mOutBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lmega/blur/engine/RenderScriptBlur;


# direct methods
.method public constructor <init>(Lmega/blur/engine/RenderScriptBlur;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lmega/blur/engine/BlurEngine$Callback;)V
    .locals 0
    .param p1    # Lmega/blur/engine/RenderScriptBlur;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lmega/blur/engine/RenderScriptBlur$BlurAsyncTask;->this$0:Lmega/blur/engine/RenderScriptBlur;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lmega/blur/engine/RenderScriptBlur$BlurAsyncTask;->mInBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lmega/blur/engine/RenderScriptBlur$BlurAsyncTask;->mOutBitmap:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lmega/blur/engine/RenderScriptBlur$BlurAsyncTask;->mCallback:Lmega/blur/engine/BlurEngine$Callback;

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-static {}, Lmega/blur/engine/RenderScriptBlur;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Running in background..."

    invoke-static {p1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lmega/blur/engine/RenderScriptBlur$BlurAsyncTask;->this$0:Lmega/blur/engine/RenderScriptBlur;

    iget-object v0, p0, Lmega/blur/engine/RenderScriptBlur$BlurAsyncTask;->mInBitmap:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lmega/blur/engine/RenderScriptBlur$BlurAsyncTask;->mOutBitmap:Landroid/graphics/Bitmap;

    .line 4
    invoke-static {p1, v0, p0}, Lmega/blur/engine/RenderScriptBlur;->access$100(Lmega/blur/engine/RenderScriptBlur;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmega/blur/engine/RenderScriptBlur$BlurAsyncTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public onCancelled(Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p1, p0, Lmega/blur/engine/RenderScriptBlur$BlurAsyncTask;->this$0:Lmega/blur/engine/RenderScriptBlur;

    .line 2
    invoke-static {p1}, Lmega/blur/engine/RenderScriptBlur;->access$200(Lmega/blur/engine/RenderScriptBlur;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lmega/blur/engine/RenderScriptBlur$BlurAsyncTask;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lmega/blur/engine/RenderScriptBlur$BlurAsyncTask;->mCallback:Lmega/blur/engine/BlurEngine$Callback;

    .line 2
    invoke-interface {v0, p1}, Lmega/blur/engine/BlurEngine$Callback;->onFinished(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lmega/blur/engine/RenderScriptBlur$BlurAsyncTask;->this$0:Lmega/blur/engine/RenderScriptBlur;

    .line 3
    invoke-static {p1}, Lmega/blur/engine/RenderScriptBlur;->access$200(Lmega/blur/engine/RenderScriptBlur;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lmega/blur/engine/RenderScriptBlur$BlurAsyncTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
