.class public final Lm5/o0$c;
.super Lm5/o0$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lm5/o0$a;)V
    .locals 0

    invoke-direct {p0, p3}, Lm5/o0$e;-><init>(Lm5/o0$a;)V

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lm5/o0$c;->e:Ljava/lang/String;

    iput-object p2, p0, Lm5/o0$c;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final c(Lm5/o0$a;)Z
    .locals 4

    iget-object v0, p0, Lm5/o0$c;->e:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-static {p1}, Lm5/o0;->m(Lm5/o0$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    iget-object p0, p0, Lm5/o0$c;->f:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lm5/o0;->l(Lm5/o0$a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    return v3
.end method
