.class public final Ls0/f;
.super Lw0/c;
.source "SourceFile"

# interfaces
.implements Ld/c;


# instance fields
.field public final d:Ld/m;

.field public final e:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lw0/c$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lw0/c;-><init>(Landroid/content/Context;Lw0/c$a;)V

    invoke-static {p1}, Ld/m;->a(Landroid/content/Context;)Ld/m;

    move-result-object p1

    iput-object p1, p0, Ls0/f;->d:Ld/m;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Ls0/f;->e:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method


# virtual methods
.method public final b(Ld/g;)V
    .locals 0

    return-void
.end method
