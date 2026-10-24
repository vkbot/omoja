.class public final Lg5/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg5/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lg5/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/locks/ReentrantLock;

.field public final b:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lg5/d$b;->a:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p1, p0, Lg5/d$b;->b:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg5/d$b;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lg5/d$b;->c:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "Lazy value not initialized"

    :goto_0
    return-object p0
.end method
