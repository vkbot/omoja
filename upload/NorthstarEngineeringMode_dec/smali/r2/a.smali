.class public final Lr2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/net/wifi/SoftApConfiguration$Builder;


# direct methods
.method public constructor <init>(Landroid/net/wifi/SoftApConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v0, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    iput-object v0, p0, Lr2/a;->a:Landroid/net/wifi/SoftApConfiguration$Builder;

    return-void
.end method


# virtual methods
.method public final a()Landroid/net/wifi/SoftApConfiguration;
    .locals 0

    iget-object p0, p0, Lr2/a;->a:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, Lr2/a;->a:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMaxNumberOfClients(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object p1

    iput-object p1, p0, Lr2/a;->a:Landroid/net/wifi/SoftApConfiguration$Builder;

    return-void
.end method

.method public final c(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lr2/a;->a:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v0, p2, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object p1

    iput-object p1, p0, Lr2/a;->a:Landroid/net/wifi/SoftApConfiguration$Builder;

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lr2/a;->a:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object p1

    iput-object p1, p0, Lr2/a;->a:Landroid/net/wifi/SoftApConfiguration$Builder;

    return-void
.end method
