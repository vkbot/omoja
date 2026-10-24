.class public final Lm5/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lm5/w1;

.field public b:I

.field public c:Lm5/c;

.field public d:Lm5/c;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lm5/c;)Lm5/c;
    .locals 3

    iget-object v0, p0, Lm5/c;->d:Lm5/c;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    move-object p1, v1

    goto :goto_1

    :cond_0
    if-ne p1, p0, :cond_1

    iget-object p1, p0, Lm5/c;->c:Lm5/c;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lm5/c;->c:Lm5/c;

    iput-object v2, v0, Lm5/c;->c:Lm5/c;

    :goto_0
    iget-object v2, p0, Lm5/c;->c:Lm5/c;

    if-nez v2, :cond_2

    if-eqz p1, :cond_3

    iput-object v0, p1, Lm5/c;->d:Lm5/c;

    goto :goto_1

    :cond_2
    iput-object v0, v2, Lm5/c;->d:Lm5/c;

    iput-object v1, p0, Lm5/c;->c:Lm5/c;

    :cond_3
    :goto_1
    iput-object v1, p0, Lm5/c;->d:Lm5/c;

    return-object p1
.end method
