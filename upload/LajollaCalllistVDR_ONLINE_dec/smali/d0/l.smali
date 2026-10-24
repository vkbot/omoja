.class public final Ld0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "fonts-androidx"

    iput-object v0, p0, Ld0/l;->a:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Ld0/l;->b:I

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    new-instance v0, Ld0/k;

    iget-object v1, p0, Ld0/l;->a:Ljava/lang/String;

    iget v2, p0, Ld0/l;->b:I

    invoke-direct {v0, p1, v1, v2}, Ld0/k;-><init>(Ljava/lang/Runnable;Ljava/lang/String;I)V

    return-object v0
.end method
