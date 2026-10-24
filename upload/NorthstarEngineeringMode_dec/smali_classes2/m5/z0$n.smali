.class public final Lm5/z0$n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/z0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "n"
.end annotation


# instance fields
.field public a:J

.field public b:Lm5/w1;

.field public c:Ljavax/xml/namespace/QName;

.field public d:Lm5/w1;

.field public e:I

.field public final synthetic f:Lm5/z0;


# direct methods
.method public constructor <init>(Lm5/z0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm5/z0$n;->f:Lm5/z0;

    return-void
.end method


# virtual methods
.method public final a(Lm5/w1;Ljavax/xml/namespace/QName;Li5/k;I)I
    .locals 4

    iget-wide v0, p0, Lm5/z0$n;->a:J

    iget-object v2, p0, Lm5/z0$n;->f:Lm5/z0;

    iget-wide v2, v2, Lm5/z0;->k:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const p0, 0x7ffffffe

    return p0

    :cond_0
    iget-object v0, p0, Lm5/z0$n;->b:Lm5/w1;

    if-ne p1, v0, :cond_3

    if-nez p3, :cond_3

    iget-object p1, p0, Lm5/z0$n;->c:Ljavax/xml/namespace/QName;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    iget p0, p0, Lm5/z0$n;->e:I

    if-le p4, p0, :cond_2

    sub-int/2addr p4, p0

    goto :goto_0

    :cond_2
    sub-int p4, p0, p4

    :goto_0
    return p4

    :cond_3
    const p0, 0x7fffffff

    return p0
.end method

.method public final b(Lm5/w1;Ljavax/xml/namespace/QName;Li5/k;I)Lm5/w1;
    .locals 5

    iget-wide v0, p0, Lm5/z0$n;->a:J

    iget-object v2, p0, Lm5/z0$n;->f:Lm5/z0;

    iget-wide v3, v2, Lm5/z0;->k:J

    cmp-long v0, v0, v3

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lm5/z0$n;->b:Lm5/w1;

    if-ne v0, p1, :cond_1

    if-nez p3, :cond_1

    iget-object v0, p0, Lm5/z0$n;->c:Ljavax/xml/namespace/QName;

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p4, :cond_5

    :cond_1
    iget-wide v2, v2, Lm5/z0;->k:J

    iput-wide v2, p0, Lm5/z0$n;->a:J

    iput-object p1, p0, Lm5/z0$n;->b:Lm5/w1;

    iput-object p2, p0, Lm5/z0$n;->c:Ljavax/xml/namespace/QName;

    iput-object v1, p0, Lm5/z0$n;->d:Lm5/w1;

    const/4 v0, -0x1

    iput v0, p0, Lm5/z0$n;->e:I

    iget-object p1, p1, Lm5/w1;->i:Lm5/w1;

    :goto_0
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lm5/w1;->v0()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    if-nez p3, :cond_2

    if-eqz p2, :cond_3

    invoke-virtual {p2, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_2
    invoke-virtual {p3, v0}, Li5/k;->a(Ljavax/xml/namespace/QName;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    :goto_1
    iput-object p1, p0, Lm5/z0$n;->d:Lm5/w1;

    const/4 p1, 0x0

    iput p1, p0, Lm5/z0$n;->e:I

    goto :goto_2

    :cond_4
    iget-object p1, p1, Lm5/w1;->g:Lm5/w1;

    goto :goto_0

    :cond_5
    :goto_2
    iget p1, p0, Lm5/z0$n;->e:I

    if-gez p1, :cond_6

    return-object v1

    :cond_6
    if-le p4, p1, :cond_b

    :goto_3
    iget p1, p0, Lm5/z0$n;->e:I

    if-le p4, p1, :cond_10

    iget-object p1, p0, Lm5/z0$n;->d:Lm5/w1;

    :cond_7
    iget-object p1, p1, Lm5/w1;->g:Lm5/w1;

    if-nez p1, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {p1}, Lm5/w1;->v0()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    if-nez p3, :cond_9

    if-eqz p2, :cond_a

    invoke-virtual {p2, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_9
    invoke-virtual {p3, v0}, Li5/k;->a(Ljavax/xml/namespace/QName;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_a
    :goto_4
    iput-object p1, p0, Lm5/z0$n;->d:Lm5/w1;

    iget p1, p0, Lm5/z0$n;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lm5/z0$n;->e:I

    goto :goto_3

    :cond_b
    if-ge p4, p1, :cond_10

    :goto_5
    iget p1, p0, Lm5/z0$n;->e:I

    if-ge p4, p1, :cond_10

    iget-object p1, p0, Lm5/z0$n;->d:Lm5/w1;

    :cond_c
    iget-object p1, p1, Lm5/w1;->h:Lm5/w1;

    if-nez p1, :cond_d

    return-object v1

    :cond_d
    invoke-virtual {p1}, Lm5/w1;->v0()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p1, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    if-nez p3, :cond_e

    if-eqz p2, :cond_f

    invoke-virtual {p2, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_6

    :cond_e
    invoke-virtual {p3, v0}, Li5/k;->a(Ljavax/xml/namespace/QName;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_f
    :goto_6
    iput-object p1, p0, Lm5/z0$n;->d:Lm5/w1;

    iget p1, p0, Lm5/z0$n;->e:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lm5/z0$n;->e:I

    goto :goto_5

    :cond_10
    iget-object p0, p0, Lm5/z0$n;->d:Lm5/w1;

    return-object p0
.end method
