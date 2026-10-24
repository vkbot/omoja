.class public final Ld/e$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/e$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "l"
.end annotation


# instance fields
.field public final synthetic a:Ld/e;


# direct methods
.method public constructor <init>(Ld/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/e$l;->a:Ld/e;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    iget-object p0, p0, Ld/e$l;->a:Ld/e;

    iget-object p0, p0, Ld/e;->b:Ld/h;

    invoke-virtual {p0, p3}, Ld/h;->b(Landroid/bluetooth/BluetoothDevice;)Ld/g;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p1, p0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ld/g;->l1:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Refesh Device name: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Ld/g;->l1:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CachedBluetoothDevice"

    invoke-static {p2, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ld/g;->d()V

    :cond_0
    return-void
.end method
