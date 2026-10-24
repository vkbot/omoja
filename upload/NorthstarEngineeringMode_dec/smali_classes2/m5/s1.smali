.class public final Lm5/s1;
.super Lm5/c0;
.source "SourceFile"


# instance fields
.field public final u:Lm5/t1;


# direct methods
.method public constructor <init>(Lm5/z0;)V
    .locals 0

    invoke-direct {p0, p1}, Lm5/c0;-><init>(Lm5/z0;)V

    new-instance p1, Lm5/t1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p0, p1, Lm5/t1;->a:Lm5/s1;

    iput-object p1, p0, Lm5/s1;->u:Lm5/t1;

    return-void
.end method


# virtual methods
.method public final C0(Lm5/z0;)Lm5/w1;
    .locals 0

    new-instance p0, Lm5/s1;

    invoke-direct {p0, p1}, Lm5/s1;-><init>(Lm5/z0;)V

    return-object p0
.end method

.method public final c0()Lm5/o0$a;
    .locals 0

    iget-object p0, p0, Lm5/s1;->u:Lm5/t1;

    return-object p0
.end method
