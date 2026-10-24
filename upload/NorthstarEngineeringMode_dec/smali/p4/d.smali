.class public Lp4/d;
.super Ljava/lang/IllegalArgumentException;
.source "SourceFile"


# instance fields
.field public final c:Lq4/a;


# direct methods
.method public varargs constructor <init>(Lq4/c;[Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    new-instance v0, Lq4/a;

    invoke-direct {v0}, Lq4/a;-><init>()V

    iput-object v0, p0, Lp4/d;->c:Lq4/a;

    invoke-virtual {v0, p1, p2}, Lq4/a;->a(Lq4/c;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getLocalizedMessage()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lp4/d;->c:Lq4/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lq4/a;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lp4/d;->c:Lq4/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lq4/a;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
