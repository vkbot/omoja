.class public final Ld0/k;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final b:I


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput p3, p0, Ld0/k;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Ld0/k;->b:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
