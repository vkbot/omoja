.class public final Lr4/b$a;
.super La/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr4/b;->m()Lr4/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lr4/k;


# direct methods
.method public constructor <init>(Lr4/k;)V
    .locals 0

    iput-object p1, p0, Lr4/b$a;->b:Lr4/k;

    const/16 p1, 0xe

    invoke-direct {p0, p1}, La/a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final l(IID)V
    .locals 0

    iget-object p0, p0, Lr4/b$a;->b:Lr4/k;

    invoke-interface {p0, p2, p1, p3, p4}, Lr4/k;->e(IID)V

    return-void
.end method
