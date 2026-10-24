.class public final Li0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lm0/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm0/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm0/a;-><init>(I)V

    iput-object v0, p0, Li0/b;->a:Lm0/a;

    return-void
.end method


# virtual methods
.method public final a(Lj0/a$a;)V
    .locals 1

    iget-object p0, p0, Li0/b;->a:Lm0/a;

    iget v0, p0, Lm0/a;->a:I

    invoke-virtual {p0, v0, p1}, Lm0/a;->d(ILjava/lang/Object;)V

    return-void
.end method
