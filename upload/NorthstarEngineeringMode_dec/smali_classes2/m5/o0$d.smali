.class public final Lm5/o0$d;
.super Lm5/o0$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lm5/o0$a;)V
    .locals 0

    invoke-direct {p0, p2}, Lm5/o0$e;-><init>(Lm5/o0$a;)V

    iput-object p1, p0, Lm5/o0$d;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final c(Lm5/o0$a;)Z
    .locals 1

    iget-object p0, p0, Lm5/o0$d;->e:Ljava/lang/String;

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lm5/o0;->o(Lm5/o0$a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
