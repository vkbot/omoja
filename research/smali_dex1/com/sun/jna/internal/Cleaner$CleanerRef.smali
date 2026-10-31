.class Lcom/sun/jna/internal/Cleaner$CleanerRef;
.super Ljava/lang/ref/PhantomReference;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lcom/sun/jna/internal/Cleaner$Cleanable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/internal/Cleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CleanerRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/sun/jna/internal/Cleaner$Cleanable;"
    }
.end annotation


# instance fields
.field private final cleaner:Lcom/sun/jna/internal/Cleaner;

.field private final cleanupTask:Ljava/lang/Runnable;

.field private next:Lcom/sun/jna/internal/Cleaner$CleanerRef;

.field private previous:Lcom/sun/jna/internal/Cleaner$CleanerRef;


# direct methods
.method public constructor <init>(Lcom/sun/jna/internal/Cleaner;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Ljava/lang/Runnable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/jna/internal/Cleaner;",
            "Ljava/lang/Object;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/sun/jna/internal/Cleaner$CleanerRef;->cleaner:Lcom/sun/jna/internal/Cleaner;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/sun/jna/internal/Cleaner$CleanerRef;->cleanupTask:Ljava/lang/Runnable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public clean()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/sun/jna/internal/Cleaner$CleanerRef;->cleaner:Lcom/sun/jna/internal/Cleaner;

    .line 2
    .line 3
    # invokes: Lcom/sun/jna/internal/Cleaner;->remove(Lcom/sun/jna/internal/Cleaner$CleanerRef;)Z
    invoke-static {v0, p0}, Lcom/sun/jna/internal/Cleaner;->access$100(Lcom/sun/jna/internal/Cleaner;Lcom/sun/jna/internal/Cleaner$CleanerRef;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_d

    .line 8
    .line 9
    iget-object v0, p0, Lcom/sun/jna/internal/Cleaner$CleanerRef;->cleanupTask:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 12
    .line 13
    .line 14
    :cond_d
    return-void
.end method

.method public getNext()Lcom/sun/jna/internal/Cleaner$CleanerRef;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/sun/jna/internal/Cleaner$CleanerRef;->next:Lcom/sun/jna/internal/Cleaner$CleanerRef;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrevious()Lcom/sun/jna/internal/Cleaner$CleanerRef;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/sun/jna/internal/Cleaner$CleanerRef;->previous:Lcom/sun/jna/internal/Cleaner$CleanerRef;

    .line 2
    .line 3
    return-object v0
.end method

.method public setNext(Lcom/sun/jna/internal/Cleaner$CleanerRef;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/sun/jna/internal/Cleaner$CleanerRef;->next:Lcom/sun/jna/internal/Cleaner$CleanerRef;

    .line 2
    .line 3
    return-void
.end method

.method public setPrevious(Lcom/sun/jna/internal/Cleaner$CleanerRef;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/sun/jna/internal/Cleaner$CleanerRef;->previous:Lcom/sun/jna/internal/Cleaner$CleanerRef;

    .line 2
    .line 3
    return-void
.end method
