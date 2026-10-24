.class public final synthetic Lcom/android/server/wm/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/server/wm/v;

.field public final synthetic b:Lcom/android/server/wm/DisplayContent;

.field public final synthetic c:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/v;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayContent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/l;->a:Lcom/android/server/wm/v;

    iput-object p2, p0, Lcom/android/server/wm/l;->b:Lcom/android/server/wm/DisplayContent;

    iput-object p3, p0, Lcom/android/server/wm/l;->c:Lcom/android/server/wm/DisplayContent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/l;->a:Lcom/android/server/wm/v;

    iget-object v1, p0, Lcom/android/server/wm/l;->b:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/l;->c:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/v;->B(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method
