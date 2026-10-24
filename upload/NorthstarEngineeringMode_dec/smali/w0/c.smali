.class public abstract Lw0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw0/c$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lw0/c$a;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lw0/c$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lw0/c;->b:Lw0/c$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    move-object v0, p0

    check-cast v0, Ls0/f;

    const v1, 0x7f120077

    iget-object v2, v0, Lw0/c;->a:Landroid/content/Context;

    iget-object v0, v0, Ls0/f;->e:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const v0, 0x7f120137

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const v1, 0x7f12006d

    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lw0/c;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iput-object v0, p0, Lw0/c;->c:Ljava/lang/String;

    iget-object p0, p0, Lw0/c;->b:Lw0/c$a;

    if-eqz p0, :cond_4

    invoke-interface {p0, v0}, Lw0/c$a;->a(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public h(I)V
    .locals 0

    invoke-virtual {p0}, Lw0/c;->a()V

    return-void
.end method

.method public l(Ld/g;I)V
    .locals 0

    invoke-virtual {p0}, Lw0/c;->a()V

    return-void
.end method
