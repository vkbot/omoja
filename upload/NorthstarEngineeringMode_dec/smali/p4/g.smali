.class public final Lp4/g;
.super Ljava/lang/UnsupportedOperationException;
.source "SourceFile"


# instance fields
.field public final c:Lq4/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lq4/c;->H1:Lq4/c;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    new-instance v2, Lq4/a;

    invoke-direct {v2}, Lq4/a;-><init>()V

    iput-object v2, p0, Lp4/g;->c:Lq4/a;

    invoke-virtual {v2, v0, v1}, Lq4/a;->a(Lq4/c;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getLocalizedMessage()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lp4/g;->c:Lq4/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lq4/a;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lp4/g;->c:Lq4/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lq4/a;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
