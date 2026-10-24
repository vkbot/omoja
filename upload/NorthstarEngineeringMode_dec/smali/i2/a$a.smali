.class public final Li2/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Li2/a;


# direct methods
.method public constructor <init>(Li2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li2/a$a;->c:Li2/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-string v0, "mLoadAudio start"

    const-string v1, "UsbManager"

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Li2/a$a;->c:Li2/a;

    iget-object v2, p0, Li2/a;->h:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Ln1/f;->a(Landroid/content/Context;ILjava/util/ArrayList;)V

    const-string v2, "mLoadAudio ok"

    invoke-static {v1, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Li2/a;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object p0, p0, Li2/a;->d:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
