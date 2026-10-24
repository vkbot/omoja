.class public final synthetic Lmega/car/config/-$$Lambda$CarPropertyProvider$wFQ01emFJFzsDYYq4VxzPpbf1ag;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/SparseArray;

.field public final synthetic f$1:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmega/car/config/-$$Lambda$CarPropertyProvider$wFQ01emFJFzsDYYq4VxzPpbf1ag;->f$0:Landroid/util/SparseArray;

    iput-object p2, p0, Lmega/car/config/-$$Lambda$CarPropertyProvider$wFQ01emFJFzsDYYq4VxzPpbf1ag;->f$1:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lmega/car/config/-$$Lambda$CarPropertyProvider$wFQ01emFJFzsDYYq4VxzPpbf1ag;->f$0:Landroid/util/SparseArray;

    iget-object v1, p0, Lmega/car/config/-$$Lambda$CarPropertyProvider$wFQ01emFJFzsDYYq4VxzPpbf1ag;->f$1:Landroid/util/SparseArray;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p1}, Lmega/car/config/CarPropertyProvider;->lambda$getProperties$0(Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/lang/Integer;)V

    return-void
.end method
