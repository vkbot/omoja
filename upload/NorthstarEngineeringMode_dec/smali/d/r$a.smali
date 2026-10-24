.class public final Ld/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Ld/r;


# direct methods
.method public constructor <init>(Ld/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/r$a;->a:Ld/r;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 0

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    iget-object p0, p0, Ld/r$a;->a:Ld/r;

    iput-object p2, p0, Ld/r;->a:Landroid/bluetooth/BluetoothPan;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld/r;->b:Z

    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 0

    iget-object p0, p0, Ld/r$a;->a:Ld/r;

    const/4 p1, 0x0

    iput-boolean p1, p0, Ld/r;->b:Z

    return-void
.end method
