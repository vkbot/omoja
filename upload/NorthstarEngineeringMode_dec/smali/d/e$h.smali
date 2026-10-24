.class public final Ld/e$h;
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
    name = "h"
.end annotation


# instance fields
.field public final synthetic a:Ld/e;


# direct methods
.method public constructor <init>(Ld/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/e$h;->a:Ld/e;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    iget-object p0, p0, Ld/e$h;->a:Ld/e;

    iget-object p0, p0, Ld/e;->b:Ld/h;

    invoke-virtual {p0, p3}, Ld/h;->b(Landroid/bluetooth/BluetoothDevice;)Ld/g;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ld/g;->d()V

    :cond_0
    return-void
.end method
