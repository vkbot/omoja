.class public final Lz0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lf/d;

.field public final b:I

.field public c:I

.field public final d:Landroid/net/IpConfiguration$IpAssignment;

.field public final e:Landroid/net/IpConfiguration$ProxySettings;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lf/d;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lz0/a;->d:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lz0/a;->e:Landroid/net/IpConfiguration$ProxySettings;

    iput-object p2, p0, Lz0/a;->a:Lf/d;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget p2, p2, Lf/d;->f1:I

    :goto_0
    iput p2, p0, Lz0/a;->c:I

    const/4 p2, 0x1

    iput p2, p0, Lz0/a;->b:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f03000e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    return-void
.end method
