.class public final synthetic Lcom/android/server/wm/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/server/wm/v;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/v;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/h;->a:Lcom/android/server/wm/v;

    iput p2, p0, Lcom/android/server/wm/h;->b:I

    iput p3, p0, Lcom/android/server/wm/h;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/h;->a:Lcom/android/server/wm/v;

    iget v1, p0, Lcom/android/server/wm/h;->b:I

    iget p0, p0, Lcom/android/server/wm/h;->c:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/v;->D(II)V

    return-void
.end method
