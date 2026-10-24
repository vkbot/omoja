.class public final Lv3/w0;
.super Lv3/z0;
.source "SourceFile"


# static fields
.field public static final b1:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final Z:Ln3/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/l<",
            "Ljava/lang/Throwable;",
            "Lf3/g;",
            ">;"
        }
    .end annotation
.end field

.field private volatile _invoked:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lv3/w0;

    const-string v1, "_invoked"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lv3/w0;->b1:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lv3/b1;)V
    .locals 0

    invoke-direct {p0}, Lv3/z0;-><init>()V

    iput-object p1, p0, Lv3/w0;->Z:Ln3/l;

    return-void
.end method


# virtual methods
.method public final bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lv3/w0;->j(Ljava/lang/Throwable;)V

    sget-object p0, Lf3/g;->a:Lf3/g;

    return-object p0
.end method

.method public final j(Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lv3/w0;->b1:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lv3/w0;->Z:Ln3/l;

    invoke-interface {p0, p1}, Ln3/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
