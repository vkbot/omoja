.class public Lk5/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk5/h$b;,
        Lk5/h$a;,
        Lk5/h$d;,
        Lk5/h$c;
    }
.end annotation


# instance fields
.field public final Z:Z

.field public transient b1:I

.field public final c:Ljava/lang/String;

.field public transient c1:Lk5/c;

.field public transient d1:I

.field public transient e1:Lk5/h$b;

.field public transient f1:Lk5/f;

.field public transient g1:Ljava/lang/String;

.field public transient h1:I

.field public transient i1:Lk5/a;

.field public transient j1:Z

.field public final r:I

.field public final x:I

.field public final y:Lk5/m;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "X"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lk5/h;->Z:Z

    const/4 v3, 0x0

    iput-object v3, v0, Lk5/h;->c1:Lk5/c;

    iput-object v3, v0, Lk5/h;->e1:Lk5/h$b;

    iput-object v3, v0, Lk5/h;->f1:Lk5/f;

    iput-object v3, v0, Lk5/h;->g1:Ljava/lang/String;

    iput-object v3, v0, Lk5/h;->i1:Lk5/a;

    iput-boolean v2, v0, Lk5/h;->j1:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    move v5, v2

    move v6, v5

    :goto_0
    const/4 v7, 0x1

    if-ge v5, v7, :cond_1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ld/f;->D(I)I

    move-result v7

    if-eqz v7, :cond_0

    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lk5/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown Option: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object/from16 v1, p1

    iput-object v1, v0, Lk5/h;->c:Ljava/lang/String;

    iput v6, v0, Lk5/h;->r:I

    const/16 v1, 0x200

    invoke-static {v6, v1}, Lk5/h;->e(II)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lk5/e;

    invoke-direct {v1}, Lk5/g;-><init>()V

    goto :goto_1

    :cond_2
    new-instance v1, Lk5/g;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput v2, v1, Lk5/g;->h:I

    iput v7, v1, Lk5/g;->i:I

    iput-object v3, v1, Lk5/g;->k:Ljava/util/Vector;

    const-class v5, Lk5/g;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const-string v6, "org.apache.xmlbeans.impl.regex.message"

    invoke-static {v6, v4, v5}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v4

    iput-object v4, v1, Lk5/g;->e:Ljava/util/ResourceBundle;

    :goto_1
    iget-object v4, v0, Lk5/h;->c:Ljava/lang/String;

    iget v5, v0, Lk5/h;->r:I

    monitor-enter v1

    :try_start_0
    iput v5, v1, Lk5/g;->d:I

    iput v2, v1, Lk5/g;->a:I

    iput v2, v1, Lk5/g;->h:I

    iput v7, v1, Lk5/g;->i:I

    iput-boolean v2, v1, Lk5/g;->j:Z

    iput-object v4, v1, Lk5/g;->b:Ljava/lang/String;

    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Lk5/g;->f(I)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, v1, Lk5/g;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move v7, v2

    :cond_3
    :goto_2
    if-ge v7, v5, :cond_c

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x9

    if-eq v9, v10, :cond_b

    const/16 v11, 0xa

    if-eq v9, v11, :cond_b

    const/16 v12, 0xc

    if-eq v9, v12, :cond_b

    const/16 v13, 0xd

    if-eq v9, v13, :cond_b

    const/16 v14, 0x20

    if-ne v9, v14, :cond_4

    goto :goto_6

    :cond_4
    const/16 v15, 0x23

    if-ne v9, v15, :cond_7

    :cond_5
    move v7, v8

    if-ge v7, v5, :cond_3

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v13, :cond_6

    if-ne v7, v11, :cond_5

    :cond_6
    move v7, v8

    goto :goto_2

    :cond_7
    const/16 v2, 0x5c

    if-ne v9, v2, :cond_a

    if-ge v8, v5, :cond_a

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v15, :cond_9

    if-eq v8, v10, :cond_9

    if-eq v8, v11, :cond_9

    if-eq v8, v12, :cond_9

    if-eq v8, v13, :cond_9

    if-ne v8, v14, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-char v2, v8

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v7, v7, 0x2

    goto :goto_5

    :cond_9
    :goto_4
    int-to-char v2, v8

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_a
    int-to-char v2, v9

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :goto_5
    const/4 v2, 0x0

    goto :goto_2

    :cond_b
    :goto_6
    move v7, v8

    goto :goto_5

    :cond_c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lk5/g;->b:Ljava/lang/String;

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_9

    :cond_d
    :goto_7
    iget-object v2, v1, Lk5/g;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, v1, Lk5/g;->c:I

    invoke-virtual {v1}, Lk5/g;->g()V

    invoke-virtual {v1}, Lk5/g;->j()Lk5/m;

    move-result-object v2

    iget v4, v1, Lk5/g;->a:I

    iget v5, v1, Lk5/g;->c:I

    if-ne v4, v5, :cond_11

    iget-object v4, v1, Lk5/g;->k:Ljava/util/Vector;

    if-eqz v4, :cond_10

    const/4 v4, 0x0

    :goto_8
    iget-object v5, v1, Lk5/g;->k:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_f

    iget-object v5, v1, Lk5/g;->k:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk5/g$a;

    iget v6, v1, Lk5/g;->i:I

    iget v5, v5, Lk5/g$a;->a:I

    if-le v6, v5, :cond_e

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_e
    const-string v0, "parser.parse.2"

    invoke-virtual {v1, v0}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object v0

    throw v0

    :cond_f
    iget-object v4, v1, Lk5/g;->k:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_10
    monitor-exit v1

    iput-object v2, v0, Lk5/h;->y:Lk5/m;

    iget v2, v1, Lk5/g;->i:I

    iput v2, v0, Lk5/h;->x:I

    iget-boolean v1, v1, Lk5/g;->j:Z

    iput-boolean v1, v0, Lk5/h;->Z:Z

    iput-object v3, v0, Lk5/h;->c1:Lk5/c;

    iput-object v3, v0, Lk5/h;->e1:Lk5/h$b;

    return-void

    :cond_11
    :try_start_1
    const-string v0, "parser.parse.1"

    invoke-virtual {v1, v0}, Lk5/g;->c(Ljava/lang/String;)Lk5/d;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_9
    monitor-exit v1

    throw v0
.end method

.method public static final b(Lk5/h$d;IIII)I
    .locals 1

    add-int/lit8 p3, p3, -0x1

    invoke-static {p0, p1, p2, p3, p4}, Lk5/h;->c(Lk5/h$d;IIII)I

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    add-int/lit8 p3, p3, -0x1

    invoke-static {p0, p1, p2, p3, p4}, Lk5/h;->c(Lk5/h$d;IIII)I

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static final c(Lk5/h$d;IIII)I
    .locals 1

    const/4 v0, 0x2

    if-lt p3, p1, :cond_c

    if-lt p3, p2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p0, p0, Lk5/h$d;->a:Ljava/lang/String;

    invoke-virtual {p0, p3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x40

    invoke-static {p4, p1}, Lk5/h;->e(II)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_8

    const/16 p1, 0x20

    invoke-static {p4, p1}, Lk5/h;->e(II)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "IsWord"

    invoke-static {p1, p2}, Lk5/m;->v(Ljava/lang/String;Z)Lk5/f;

    move-result-object p1

    invoke-virtual {p1, p0}, Lk5/f;->F(I)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_0

    :cond_1
    const/16 p1, 0x5f

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0x30

    if-ge p0, p1, :cond_3

    goto :goto_2

    :cond_3
    const/16 p1, 0x7a

    if-le p0, p1, :cond_4

    goto :goto_2

    :cond_4
    const/16 p1, 0x39

    if-gt p0, p1, :cond_5

    goto :goto_0

    :cond_5
    const/16 p1, 0x41

    if-ge p0, p1, :cond_6

    goto :goto_2

    :cond_6
    const/16 p1, 0x5a

    if-gt p0, p1, :cond_7

    goto :goto_0

    :cond_7
    const/16 p1, 0x61

    if-ge p0, p1, :cond_9

    goto :goto_2

    :cond_8
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p1

    const/16 p3, 0xf

    const/4 p4, 0x0

    if-eq p1, p3, :cond_b

    const/16 p0, 0x10

    if-eq p1, p0, :cond_a

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :cond_9
    :goto_0
    :pswitch_0
    move v0, p2

    goto :goto_2

    :cond_a
    :goto_1
    :pswitch_1
    move v0, p4

    goto :goto_2

    :cond_b
    packed-switch p0, :pswitch_data_1

    goto :goto_1

    :cond_c
    :goto_2
    :pswitch_2
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static d(I)Z
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2028

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2029

    if-ne p0, v0, :cond_0

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

.method public static e(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a(Lk5/m;Lk5/c;Z)Lk5/c;
    .locals 10

    iget v0, p1, Lk5/m;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unknown token type: "

    invoke-static {p1, v0}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast p1, Lk5/m$d;

    iget-object v0, p1, Lk5/m$d;->x1:Lk5/m;

    if-nez v0, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v3, p3}, Lk5/h;->a(Lk5/m;Lk5/c;Z)Lk5/c;

    move-result-object v0

    :goto_0
    iget-object v1, p1, Lk5/m$d;->y1:Lk5/m;

    invoke-virtual {p0, v1, p2, p3}, Lk5/h;->a(Lk5/m;Lk5/c;Z)Lk5/c;

    move-result-object v1

    iget-object v2, p1, Lk5/m$d;->z1:Lk5/m;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2, p2, p3}, Lk5/h;->a(Lk5/m;Lk5/c;Z)Lk5/c;

    move-result-object v3

    :goto_1
    new-instance p0, Lk5/c$c;

    const/16 p3, 0x1a

    invoke-direct {p0, p3}, Lk5/c;-><init>(I)V

    iget p1, p1, Lk5/m$d;->w1:I

    iput p1, p0, Lk5/c$c;->c:I

    iput-object v0, p0, Lk5/c$c;->d:Lk5/c;

    iput-object v1, p0, Lk5/c$c;->e:Lk5/c;

    iput-object v3, p0, Lk5/c$c;->f:Lk5/c;

    iput-object p2, p0, Lk5/c;->b:Lk5/c;

    :goto_2
    move-object p2, p0

    goto/16 :goto_e

    :pswitch_1
    invoke-virtual {p1, v2}, Lk5/m;->q(I)Lk5/m;

    move-result-object v0

    invoke-virtual {p0, v0, v3, p3}, Lk5/h;->a(Lk5/m;Lk5/c;Z)Lk5/c;

    move-result-object p0

    check-cast p1, Lk5/m$f;

    new-instance p3, Lk5/c$d;

    iget v0, p1, Lk5/m$f;->x1:I

    iget p1, p1, Lk5/m$f;->y1:I

    const/16 v1, 0x19

    invoke-direct {p3, v1, v0, p1}, Lk5/c$d;-><init>(III)V

    iput-object p0, p3, Lk5/c$b;->c:Lk5/c;

    iput-object p2, p3, Lk5/c;->b:Lk5/c;

    move-object p2, p3

    goto/16 :goto_e

    :pswitch_2
    invoke-virtual {p1, v2}, Lk5/m;->q(I)Lk5/m;

    move-result-object p1

    invoke-virtual {p0, p1, v3, p3}, Lk5/h;->a(Lk5/m;Lk5/c;Z)Lk5/c;

    move-result-object p0

    new-instance p1, Lk5/c$b;

    const/16 p3, 0x18

    invoke-direct {p1, p3}, Lk5/c;-><init>(I)V

    iput-object p0, p1, Lk5/c$b;->c:Lk5/c;

    iput-object p2, p1, Lk5/c;->b:Lk5/c;

    :goto_3
    move-object p2, p1

    goto/16 :goto_e

    :pswitch_3
    invoke-virtual {p1, v2}, Lk5/m;->q(I)Lk5/m;

    move-result-object p1

    invoke-virtual {p0, p1, v3, v1}, Lk5/h;->a(Lk5/m;Lk5/c;Z)Lk5/c;

    move-result-object p0

    new-instance p1, Lk5/c$b;

    const/16 p3, 0x17

    invoke-direct {p1, p3}, Lk5/c;-><init>(I)V

    iput-object p0, p1, Lk5/c$b;->c:Lk5/c;

    iput-object p2, p1, Lk5/c;->b:Lk5/c;

    goto :goto_3

    :pswitch_4
    invoke-virtual {p1, v2}, Lk5/m;->q(I)Lk5/m;

    move-result-object p1

    invoke-virtual {p0, p1, v3, v1}, Lk5/h;->a(Lk5/m;Lk5/c;Z)Lk5/c;

    move-result-object p0

    new-instance p1, Lk5/c$b;

    const/16 p3, 0x16

    invoke-direct {p1, p3}, Lk5/c;-><init>(I)V

    iput-object p0, p1, Lk5/c$b;->c:Lk5/c;

    iput-object p2, p1, Lk5/c;->b:Lk5/c;

    goto :goto_3

    :pswitch_5
    invoke-virtual {p1, v2}, Lk5/m;->q(I)Lk5/m;

    move-result-object p1

    invoke-virtual {p0, p1, v3, v2}, Lk5/h;->a(Lk5/m;Lk5/c;Z)Lk5/c;

    move-result-object p0

    new-instance p1, Lk5/c$b;

    const/16 p3, 0x15

    invoke-direct {p1, p3}, Lk5/c;-><init>(I)V

    iput-object p0, p1, Lk5/c$b;->c:Lk5/c;

    iput-object p2, p1, Lk5/c;->b:Lk5/c;

    goto :goto_3

    :pswitch_6
    invoke-virtual {p1, v2}, Lk5/m;->q(I)Lk5/m;

    move-result-object p1

    invoke-virtual {p0, p1, v3, v2}, Lk5/h;->a(Lk5/m;Lk5/c;Z)Lk5/c;

    move-result-object p0

    new-instance p1, Lk5/c$b;

    const/16 p3, 0x14

    invoke-direct {p1, p3}, Lk5/c;-><init>(I)V

    iput-object p0, p1, Lk5/c$b;->c:Lk5/c;

    iput-object p2, p1, Lk5/c;->b:Lk5/c;

    goto :goto_3

    :pswitch_7
    invoke-virtual {p1}, Lk5/m;->w()I

    move-result p0

    new-instance p1, Lk5/c$a;

    const/16 p3, 0x10

    invoke-direct {p1, p3, p0}, Lk5/c$a;-><init>(II)V

    iput-object p2, p1, Lk5/c;->b:Lk5/c;

    goto :goto_3

    :pswitch_8
    new-instance p0, Lk5/c;

    invoke-direct {p0, v2}, Lk5/c;-><init>(I)V

    iput-object p2, p0, Lk5/c;->b:Lk5/c;

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p1}, Lk5/m;->x()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lk5/c$f;

    const/4 p3, 0x6

    invoke-direct {p1, p3}, Lk5/c;-><init>(I)V

    iput-object p0, p1, Lk5/c$f;->c:Ljava/lang/String;

    iput-object p2, p1, Lk5/c;->b:Lk5/c;

    goto :goto_3

    :pswitch_a
    invoke-virtual {p1}, Lk5/m;->p()I

    move-result p0

    new-instance p1, Lk5/c$a;

    const/4 p3, 0x5

    invoke-direct {p1, p3, p0}, Lk5/c$a;-><init>(II)V

    iput-object p2, p1, Lk5/c;->b:Lk5/c;

    goto/16 :goto_3

    :pswitch_b
    invoke-virtual {p1}, Lk5/m;->u()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1, v2}, Lk5/m;->q(I)Lk5/m;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lk5/h;->a(Lk5/m;Lk5/c;Z)Lk5/c;

    move-result-object p2

    goto/16 :goto_e

    :cond_2
    const/16 v0, 0xf

    if-eqz p3, :cond_3

    invoke-virtual {p1}, Lk5/m;->u()I

    move-result v1

    new-instance v3, Lk5/c$a;

    invoke-direct {v3, v0, v1}, Lk5/c$a;-><init>(II)V

    iput-object p2, v3, Lk5/c;->b:Lk5/c;

    invoke-virtual {p1, v2}, Lk5/m;->q(I)Lk5/m;

    move-result-object p2

    invoke-virtual {p0, p2, v3, p3}, Lk5/h;->a(Lk5/m;Lk5/c;Z)Lk5/c;

    move-result-object p0

    invoke-virtual {p1}, Lk5/m;->u()I

    move-result p1

    neg-int p1, p1

    new-instance p2, Lk5/c$a;

    invoke-direct {p2, v0, p1}, Lk5/c$a;-><init>(II)V

    iput-object p0, p2, Lk5/c;->b:Lk5/c;

    goto/16 :goto_e

    :cond_3
    invoke-virtual {p1}, Lk5/m;->u()I

    move-result v1

    neg-int v1, v1

    new-instance v3, Lk5/c$a;

    invoke-direct {v3, v0, v1}, Lk5/c$a;-><init>(II)V

    iput-object p2, v3, Lk5/c;->b:Lk5/c;

    invoke-virtual {p1, v2}, Lk5/m;->q(I)Lk5/m;

    move-result-object p2

    invoke-virtual {p0, p2, v3, p3}, Lk5/h;->a(Lk5/m;Lk5/c;Z)Lk5/c;

    move-result-object p0

    invoke-virtual {p1}, Lk5/m;->u()I

    move-result p1

    new-instance p2, Lk5/c$a;

    invoke-direct {p2, v0, p1}, Lk5/c$a;-><init>(II)V

    iput-object p0, p2, Lk5/c;->b:Lk5/c;

    goto/16 :goto_e

    :pswitch_c
    new-instance p0, Lk5/c$e;

    const/4 p3, 0x3

    invoke-direct {p0, p3}, Lk5/c;-><init>(I)V

    iput-object p1, p0, Lk5/c$e;->c:Lk5/m;

    iput-object p2, p0, Lk5/c;->b:Lk5/c;

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p1, v2}, Lk5/m;->q(I)Lk5/m;

    move-result-object v3

    invoke-virtual {p1}, Lk5/m;->s()I

    move-result v4

    invoke-virtual {p1}, Lk5/m;->r()I

    move-result p1

    if-ltz v4, :cond_4

    if-ne v4, p1, :cond_4

    :goto_4
    if-ge v2, v4, :cond_d

    invoke-virtual {p0, v3, p2, p3}, Lk5/h;->a(Lk5/m;Lk5/c;Z)Lk5/c;

    move-result-object p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    if-lez v4, :cond_5

    if-lez p1, :cond_5

    sub-int/2addr p1, v4

    :cond_5
    const/16 v5, 0x9

    if-lez p1, :cond_9

    move-object v7, p2

    move v6, v2

    :goto_5
    if-ge v6, p1, :cond_8

    if-ne v0, v5, :cond_6

    move v8, v1

    goto :goto_6

    :cond_6
    move v8, v2

    :goto_6
    new-instance v9, Lk5/c$b;

    if-eqz v8, :cond_7

    const/16 v8, 0xa

    goto :goto_7

    :cond_7
    move v8, v5

    :goto_7
    invoke-direct {v9, v8}, Lk5/c;-><init>(I)V

    iput-object p2, v9, Lk5/c;->b:Lk5/c;

    invoke-virtual {p0, v3, v7, p3}, Lk5/h;->a(Lk5/m;Lk5/c;Z)Lk5/c;

    move-result-object v7

    iput-object v7, v9, Lk5/c$b;->c:Lk5/c;

    add-int/lit8 v6, v6, 0x1

    move-object v7, v9

    goto :goto_5

    :cond_8
    move-object p2, v7

    goto :goto_9

    :cond_9
    if-ne v0, v5, :cond_a

    new-instance p1, Lk5/c$b;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Lk5/c;-><init>(I)V

    goto :goto_8

    :cond_a
    iget p1, p0, Lk5/h;->d1:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lk5/h;->d1:I

    new-instance v0, Lk5/c$d;

    const/4 v1, 0x7

    const/4 v5, -0x1

    invoke-direct {v0, v1, p1, v5}, Lk5/c$d;-><init>(III)V

    move-object p1, v0

    :goto_8
    iput-object p2, p1, Lk5/c;->b:Lk5/c;

    invoke-virtual {p0, v3, p1, p3}, Lk5/h;->a(Lk5/m;Lk5/c;Z)Lk5/c;

    move-result-object p2

    iput-object p2, p1, Lk5/c$b;->c:Lk5/c;

    move-object p2, p1

    :goto_9
    if-lez v4, :cond_d

    :goto_a
    if-ge v2, v4, :cond_d

    invoke-virtual {p0, v3, p2, p3}, Lk5/h;->a(Lk5/m;Lk5/c;Z)Lk5/c;

    move-result-object p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :pswitch_e
    invoke-virtual {p1}, Lk5/m;->size()I

    move-result v0

    new-instance v1, Lk5/c$g;

    const/16 v3, 0xb

    invoke-direct {v1, v3}, Lk5/c;-><init>(I)V

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3, v0}, Ljava/util/Vector;-><init>(I)V

    iput-object v3, v1, Lk5/c$g;->c:Ljava/util/Vector;

    :goto_b
    invoke-virtual {p1}, Lk5/m;->size()I

    move-result v0

    if-ge v2, v0, :cond_b

    invoke-virtual {p1, v2}, Lk5/m;->q(I)Lk5/m;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lk5/h;->a(Lk5/m;Lk5/c;Z)Lk5/c;

    move-result-object v0

    iget-object v3, v1, Lk5/c$g;->c:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_b
    move-object p2, v1

    goto :goto_e

    :pswitch_f
    if-nez p3, :cond_c

    invoke-virtual {p1}, Lk5/m;->size()I

    move-result p3

    sub-int/2addr p3, v1

    :goto_c
    if-ltz p3, :cond_d

    invoke-virtual {p1, p3}, Lk5/m;->q(I)Lk5/m;

    move-result-object v0

    invoke-virtual {p0, v0, p2, v2}, Lk5/h;->a(Lk5/m;Lk5/c;Z)Lk5/c;

    move-result-object p2

    add-int/lit8 p3, p3, -0x1

    goto :goto_c

    :cond_c
    :goto_d
    invoke-virtual {p1}, Lk5/m;->size()I

    move-result p3

    if-ge v2, p3, :cond_d

    invoke-virtual {p1, v2}, Lk5/m;->q(I)Lk5/m;

    move-result-object p3

    invoke-virtual {p0, p3, p2, v1}, Lk5/h;->a(Lk5/m;Lk5/c;Z)Lk5/c;

    move-result-object p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :pswitch_10
    invoke-virtual {p1}, Lk5/m;->p()I

    move-result p0

    new-instance p1, Lk5/c$a;

    invoke-direct {p1, v1, p0}, Lk5/c$a;-><init>(II)V

    iput-object p2, p1, Lk5/c;->b:Lk5/c;

    goto/16 :goto_3

    :cond_d
    :goto_e
    :pswitch_11
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_11
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lk5/h;

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lk5/h;

    iget-object v1, p0, Lk5/h;->c:Ljava/lang/String;

    iget-object v2, p1, Lk5/h;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget p0, p0, Lk5/h;->r:I

    iget p1, p1, Lk5/h;->r:I

    if-ne p0, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final f(Lk5/h$b;Lk5/c;II)I
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lk5/h$b;->h:Lk5/h$d;

    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    new-instance v4, Lu4/a;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lu4/a;-><init>(I)V

    const/4 v6, 0x2

    move/from16 v7, p4

    invoke-static {v7, v6}, Lk5/h;->e(II)Z

    move-result v8

    const/4 v9, 0x0

    move/from16 v15, p3

    move v13, v5

    move v14, v7

    move/from16 v16, v9

    move-object/from16 v7, p2

    :goto_0
    const/16 v12, 0xf

    const/16 v17, -0x1

    if-eqz v7, :cond_0

    iget v10, v1, Lk5/h$b;->b:I

    if-gt v15, v10, :cond_0

    iget v11, v1, Lk5/h$b;->a:I

    if-ge v15, v11, :cond_1

    :cond_0
    move/from16 v24, v6

    move/from16 v25, v13

    move v11, v14

    move v5, v15

    goto/16 :goto_21

    :cond_1
    iget v11, v7, Lk5/c;->a:I

    if-eqz v11, :cond_43

    if-eq v11, v5, :cond_3d

    if-eq v11, v12, :cond_3a

    const/16 v12, 0x10

    const-string v6, "Internal Error: Reference number must be more than zero: "

    if-eq v11, v12, :cond_2d

    packed-switch v11, :pswitch_data_0

    packed-switch v11, :pswitch_data_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown operation type: "

    invoke-static {v1, v11}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object v10, v7

    check-cast v10, Lk5/c$c;

    iget v11, v10, Lk5/c$c;->c:I

    if-lez v11, :cond_5

    iget v7, v0, Lk5/h;->x:I

    if-ge v11, v7, :cond_4

    iget-object v6, v1, Lk5/h$b;->d:Lk5/b;

    if-eqz v6, :cond_2

    invoke-virtual {v6, v11}, Lk5/b;->a(I)I

    move-result v6

    if-ltz v6, :cond_2

    iget-object v6, v1, Lk5/h$b;->d:Lk5/b;

    invoke-virtual {v6, v11}, Lk5/b;->b(I)I

    move-result v6

    if-ltz v6, :cond_2

    iget-object v6, v10, Lk5/c$c;->e:Lk5/c;

    goto :goto_1

    :cond_2
    iget-object v6, v10, Lk5/c$c;->f:Lk5/c;

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    iget-object v6, v10, Lk5/c;->b:Lk5/c;

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {v6, v11}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {v3, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v15}, Lu4/a;->c(I)V

    iget-object v6, v10, Lk5/c$c;->d:Lk5/c;

    :goto_1
    move-object v7, v6

    :goto_2
    move/from16 v5, v17

    const/16 v24, 0x2

    goto/16 :goto_24

    :pswitch_1
    invoke-virtual {v7}, Lk5/c;->c()I

    move-result v6

    or-int/2addr v6, v14

    invoke-virtual {v7}, Lk5/c;->d()I

    move-result v10

    not-int v10, v10

    and-int/2addr v6, v10

    invoke-virtual {v3, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v14}, Lu4/a;->c(I)V

    invoke-virtual {v4, v15}, Lu4/a;->c(I)V

    invoke-virtual {v7}, Lk5/c;->b()Lk5/c;

    move-result-object v7

    move v14, v6

    goto :goto_2

    :pswitch_2
    invoke-virtual {v3, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v15}, Lu4/a;->c(I)V

    invoke-virtual {v7}, Lk5/c;->b()Lk5/c;

    move-result-object v6

    goto :goto_1

    :pswitch_3
    invoke-virtual {v3, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v13}, Lu4/a;->c(I)V

    invoke-virtual {v4, v15}, Lu4/a;->c(I)V

    const/16 v6, 0x14

    if-eq v11, v6, :cond_7

    const/16 v6, 0x15

    if-ne v11, v6, :cond_6

    goto :goto_3

    :cond_6
    move/from16 v13, v17

    goto :goto_4

    :cond_7
    :goto_3
    move v13, v5

    :goto_4
    invoke-virtual {v7}, Lk5/c;->b()Lk5/c;

    move-result-object v6

    goto :goto_1

    :pswitch_4
    invoke-virtual {v7}, Lk5/c;->g()I

    move-result v6

    if-nez v6, :cond_8

    :goto_5
    move/from16 v16, v5

    goto :goto_2

    :cond_8
    invoke-virtual {v3, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v9}, Lu4/a;->c(I)V

    invoke-virtual {v4, v15}, Lu4/a;->c(I)V

    invoke-virtual {v7, v9}, Lk5/c;->a(I)Lk5/c;

    move-result-object v6

    goto :goto_1

    :pswitch_5
    invoke-virtual {v3, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v15}, Lu4/a;->c(I)V

    iget-object v6, v7, Lk5/c;->b:Lk5/c;

    goto :goto_1

    :pswitch_6
    invoke-virtual {v7}, Lk5/c;->c()I

    move-result v6

    iget-object v10, v1, Lk5/h$b;->f:[Lk5/h$a;

    aget-object v10, v10, v6

    move v11, v9

    :goto_6
    iget v12, v10, Lk5/h$a;->b:I

    if-ge v11, v12, :cond_a

    iget-object v12, v10, Lk5/h$a;->a:[I

    aget v12, v12, v11

    if-ne v12, v15, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_a
    iget-object v10, v1, Lk5/h$b;->f:[Lk5/h$a;

    aget-object v6, v10, v6

    iget v10, v6, Lk5/h$a;->b:I

    iget-object v11, v6, Lk5/h$a;->a:[I

    array-length v12, v11

    if-ne v10, v12, :cond_b

    array-length v12, v11

    shl-int/2addr v12, v5

    new-array v12, v12, [I

    invoke-static {v11, v9, v12, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v12, v6, Lk5/h$a;->a:[I

    :cond_b
    iget-object v10, v6, Lk5/h$a;->a:[I

    iget v11, v6, Lk5/h$a;->b:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v6, Lk5/h$a;->b:I

    aput v15, v10, v11

    :pswitch_7
    invoke-virtual {v3, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v15}, Lu4/a;->c(I)V

    invoke-virtual {v7}, Lk5/c;->b()Lk5/c;

    move-result-object v6

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {v7}, Lk5/c;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v13, :cond_10

    iget v10, v1, Lk5/h$b;->b:I

    sub-int/2addr v10, v15

    if-ge v10, v12, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v25, v13

    move v5, v15

    move v15, v14

    goto :goto_8

    :cond_c
    if-eqz v8, :cond_d

    iget-object v10, v2, Lk5/h$d;->a:Ljava/lang/String;

    const/4 v11, 0x1

    const/16 v19, 0x0

    move/from16 p2, v12

    move v12, v15

    move/from16 v25, v13

    move-object v13, v6

    move v6, v14

    move/from16 v14, v19

    move v5, v15

    move/from16 v15, p2

    invoke-virtual/range {v10 .. v15}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v10

    move/from16 v11, p2

    move v15, v6

    goto :goto_7

    :cond_d
    move/from16 p2, v12

    move/from16 v25, v13

    move v5, v15

    move v15, v14

    iget-object v10, v2, Lk5/h$d;->a:Ljava/lang/String;

    move/from16 v11, p2

    invoke-virtual {v10, v5, v6, v9, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    :goto_7
    if-nez v10, :cond_f

    :goto_8
    move v14, v15

    move/from16 v13, v25

    const/16 v16, 0x1

    :goto_9
    const/16 v24, 0x2

    :goto_a
    move v15, v5

    :cond_e
    :goto_b
    move/from16 v5, v17

    goto/16 :goto_24

    :cond_f
    add-int/2addr v5, v11

    goto :goto_e

    :cond_10
    move v11, v12

    move/from16 v25, v13

    move v5, v15

    move v15, v14

    sub-int v10, v5, v11

    iget v12, v1, Lk5/h$b;->b:I

    sub-int/2addr v12, v10

    if-ge v12, v11, :cond_11

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_d

    :cond_11
    if-eqz v8, :cond_12

    iget-object v12, v2, Lk5/h$d;->a:Ljava/lang/String;

    const/16 v20, 0x1

    const/16 v23, 0x0

    move-object/from16 v19, v12

    move/from16 v21, v10

    move-object/from16 v22, v6

    move/from16 v24, v11

    invoke-virtual/range {v19 .. v24}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    goto :goto_c

    :cond_12
    iget-object v12, v2, Lk5/h$d;->a:Ljava/lang/String;

    invoke-virtual {v12, v10, v6, v9, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    :goto_c
    if-nez v6, :cond_13

    :goto_d
    goto :goto_8

    :cond_13
    move v5, v10

    :goto_e
    iget-object v6, v7, Lk5/c;->b:Lk5/c;

    move-object v7, v6

    move v14, v15

    move/from16 v13, v25

    goto :goto_9

    :pswitch_9
    move/from16 v25, v13

    move v5, v15

    move v15, v14

    invoke-virtual {v7}, Lk5/c;->c()I

    move-result v6

    const/16 v10, 0x24

    const/16 v11, 0xa

    const/16 v12, 0xd

    const/16 v13, 0x8

    if-eq v6, v10, :cond_23

    const/16 v10, 0x3c

    if-eq v6, v10, :cond_21

    const/16 v10, 0x3e

    if-eq v6, v10, :cond_1f

    const/16 v10, 0x5a

    if-eq v6, v10, :cond_1d

    const/16 v10, 0x5e

    if-eq v6, v10, :cond_1b

    const/16 v10, 0x62

    if-eq v6, v10, :cond_18

    const/16 v10, 0x7a

    if-eq v6, v10, :cond_17

    packed-switch v6, :pswitch_data_2

    :cond_14
    :goto_f
    const/4 v14, 0x2

    goto/16 :goto_12

    :pswitch_a
    iget v6, v1, Lk5/h$b;->c:I

    if-nez v6, :cond_15

    goto :goto_f

    :cond_15
    iget v6, v1, Lk5/h$b;->a:I

    iget v10, v1, Lk5/h$b;->b:I

    invoke-static {v2, v6, v10, v5, v15}, Lk5/h;->c(Lk5/h$d;IIII)I

    move-result v6

    if-eqz v6, :cond_14

    iget v10, v1, Lk5/h$b;->a:I

    iget v11, v1, Lk5/h$b;->b:I

    invoke-static {v2, v10, v11, v5, v15}, Lk5/h;->b(Lk5/h$d;IIII)I

    move-result v10

    if-ne v6, v10, :cond_16

    goto :goto_f

    :cond_16
    :goto_10
    const/4 v14, 0x2

    goto/16 :goto_11

    :pswitch_b
    iget v6, v1, Lk5/h$b;->a:I

    if-eq v5, v6, :cond_14

    goto :goto_10

    :pswitch_c
    iget v6, v1, Lk5/h$b;->a:I

    if-eq v5, v6, :cond_14

    if-le v5, v6, :cond_16

    add-int/lit8 v6, v5, -0x1

    iget-object v10, v2, Lk5/h$d;->a:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lk5/h;->d(I)Z

    move-result v6

    if-nez v6, :cond_14

    goto :goto_10

    :cond_17
    iget v6, v1, Lk5/h$b;->b:I

    if-eq v5, v6, :cond_14

    goto :goto_10

    :cond_18
    iget v6, v1, Lk5/h$b;->c:I

    if-nez v6, :cond_19

    goto :goto_10

    :cond_19
    iget v6, v1, Lk5/h$b;->a:I

    iget v10, v1, Lk5/h$b;->b:I

    invoke-static {v2, v6, v10, v5, v15}, Lk5/h;->c(Lk5/h$d;IIII)I

    move-result v6

    if-nez v6, :cond_1a

    goto :goto_10

    :cond_1a
    iget v10, v1, Lk5/h$b;->a:I

    iget v11, v1, Lk5/h$b;->b:I

    invoke-static {v2, v10, v11, v5, v15}, Lk5/h;->b(Lk5/h$d;IIII)I

    move-result v10

    if-ne v6, v10, :cond_14

    goto :goto_10

    :cond_1b
    invoke-static {v15, v13}, Lk5/h;->e(II)Z

    move-result v6

    if-eqz v6, :cond_1c

    iget v6, v1, Lk5/h$b;->a:I

    if-eq v5, v6, :cond_14

    if-le v5, v6, :cond_16

    iget v6, v1, Lk5/h$b;->b:I

    if-ge v5, v6, :cond_16

    add-int/lit8 v6, v5, -0x1

    iget-object v10, v2, Lk5/h$d;->a:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lk5/h;->d(I)Z

    move-result v6

    if-nez v6, :cond_14

    goto :goto_10

    :cond_1c
    iget v6, v1, Lk5/h$b;->a:I

    if-eq v5, v6, :cond_14

    goto :goto_10

    :cond_1d
    iget v6, v1, Lk5/h$b;->b:I

    if-eq v5, v6, :cond_14

    add-int/lit8 v10, v5, 0x1

    if-ne v10, v6, :cond_1e

    iget-object v6, v2, Lk5/h$d;->a:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lk5/h;->d(I)Z

    move-result v6

    if-nez v6, :cond_14

    :cond_1e
    add-int/lit8 v6, v5, 0x2

    iget v13, v1, Lk5/h$b;->b:I

    if-ne v6, v13, :cond_16

    iget-object v6, v2, Lk5/h$d;->a:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v12, :cond_16

    iget-object v6, v2, Lk5/h$d;->a:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v11, :cond_14

    goto/16 :goto_10

    :cond_1f
    iget v6, v1, Lk5/h$b;->c:I

    if-eqz v6, :cond_16

    iget v6, v1, Lk5/h$b;->a:I

    if-ne v5, v6, :cond_20

    goto/16 :goto_10

    :cond_20
    iget v10, v1, Lk5/h$b;->b:I

    invoke-static {v2, v6, v10, v5, v15}, Lk5/h;->c(Lk5/h$d;IIII)I

    move-result v6

    const/4 v10, 0x2

    if-ne v6, v10, :cond_16

    iget v6, v1, Lk5/h$b;->a:I

    iget v10, v1, Lk5/h$b;->b:I

    invoke-static {v2, v6, v10, v5, v15}, Lk5/h;->b(Lk5/h$d;IIII)I

    move-result v6

    const/4 v10, 0x1

    if-eq v6, v10, :cond_14

    goto/16 :goto_10

    :cond_21
    iget v6, v1, Lk5/h$b;->c:I

    if-eqz v6, :cond_16

    iget v6, v1, Lk5/h$b;->b:I

    if-ne v5, v6, :cond_22

    goto/16 :goto_10

    :cond_22
    iget v10, v1, Lk5/h$b;->a:I

    invoke-static {v2, v10, v6, v5, v15}, Lk5/h;->c(Lk5/h$d;IIII)I

    move-result v6

    const/4 v10, 0x1

    if-ne v6, v10, :cond_16

    iget v6, v1, Lk5/h$b;->a:I

    iget v10, v1, Lk5/h$b;->b:I

    invoke-static {v2, v6, v10, v5, v15}, Lk5/h;->b(Lk5/h$d;IIII)I

    move-result v6

    const/4 v14, 0x2

    if-eq v6, v14, :cond_27

    goto :goto_11

    :cond_23
    const/4 v14, 0x2

    invoke-static {v15, v13}, Lk5/h;->e(II)Z

    move-result v6

    if-eqz v6, :cond_24

    iget v6, v1, Lk5/h$b;->b:I

    if-eq v5, v6, :cond_27

    if-ge v5, v6, :cond_26

    iget-object v6, v2, Lk5/h$d;->a:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lk5/h;->d(I)Z

    move-result v6

    if-nez v6, :cond_27

    goto :goto_11

    :cond_24
    iget v6, v1, Lk5/h$b;->b:I

    if-eq v5, v6, :cond_27

    add-int/lit8 v10, v5, 0x1

    if-ne v10, v6, :cond_25

    iget-object v6, v2, Lk5/h$d;->a:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lk5/h;->d(I)Z

    move-result v6

    if-nez v6, :cond_27

    :cond_25
    add-int/lit8 v6, v5, 0x2

    iget v13, v1, Lk5/h$b;->b:I

    if-ne v6, v13, :cond_26

    iget-object v6, v2, Lk5/h$d;->a:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v12, :cond_26

    iget-object v6, v2, Lk5/h$d;->a:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v11, :cond_27

    :cond_26
    :goto_11
    move/from16 v24, v14

    move v14, v15

    move/from16 v13, v25

    const/16 v16, 0x1

    goto/16 :goto_a

    :cond_27
    :goto_12
    iget-object v6, v7, Lk5/c;->b:Lk5/c;

    move-object v7, v6

    move/from16 v24, v14

    move v14, v15

    move/from16 v13, v25

    goto/16 :goto_a

    :pswitch_d
    move/from16 v25, v13

    move v5, v15

    move v15, v14

    const/4 v14, 0x2

    if-lez v25, :cond_28

    move v6, v5

    goto :goto_13

    :cond_28
    add-int/lit8 v6, v5, -0x1

    :goto_13
    if-ge v6, v10, :cond_26

    if-gez v6, :cond_29

    goto :goto_11

    :cond_29
    iget-object v10, v2, Lk5/h$d;->a:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ld/f;->M(I)Z

    move-result v11

    if-eqz v11, :cond_2a

    add-int v13, v6, v25

    iget v11, v1, Lk5/h$b;->b:I

    if-ge v13, v11, :cond_2a

    if-ltz v13, :cond_2a

    iget-object v6, v2, Lk5/h$d;->a:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v10, v6}, Ld/f;->l(II)I

    move-result v10

    move v6, v13

    :cond_2a
    invoke-virtual {v7}, Lk5/c;->f()Lk5/f;

    move-result-object v11

    invoke-virtual {v11, v10}, Lk5/f;->F(I)Z

    move-result v10

    if-nez v10, :cond_2b

    goto :goto_11

    :cond_2b
    if-lez v25, :cond_2c

    add-int/lit8 v6, v6, 0x1

    :cond_2c
    iget-object v5, v7, Lk5/c;->b:Lk5/c;

    move-object v7, v5

    move/from16 v24, v14

    move v14, v15

    move/from16 v5, v17

    move/from16 v13, v25

    move v15, v6

    goto/16 :goto_24

    :cond_2d
    move/from16 v25, v13

    move v5, v15

    move v15, v14

    const/4 v14, 0x2

    invoke-virtual {v7}, Lk5/c;->c()I

    move-result v10

    if-lez v10, :cond_39

    iget v11, v0, Lk5/h;->x:I

    if-ge v10, v11, :cond_39

    iget-object v6, v1, Lk5/h$b;->d:Lk5/b;

    if-eqz v6, :cond_38

    invoke-virtual {v6, v10}, Lk5/b;->a(I)I

    move-result v6

    if-ltz v6, :cond_2f

    iget-object v6, v1, Lk5/h$b;->d:Lk5/b;

    invoke-virtual {v6, v10}, Lk5/b;->b(I)I

    move-result v6

    if-gez v6, :cond_2e

    goto :goto_14

    :cond_2e
    iget-object v6, v1, Lk5/h$b;->d:Lk5/b;

    invoke-virtual {v6, v10}, Lk5/b;->a(I)I

    move-result v6

    iget-object v11, v1, Lk5/h$b;->d:Lk5/b;

    invoke-virtual {v11, v10}, Lk5/b;->b(I)I

    move-result v10

    sub-int v13, v10, v6

    if-lez v25, :cond_34

    iget v10, v1, Lk5/h$b;->b:I

    sub-int/2addr v10, v5

    if-ge v10, v13, :cond_30

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2f
    :goto_14
    move/from16 v24, v14

    move v11, v15

    goto :goto_16

    :cond_30
    if-eqz v8, :cond_31

    iget-object v12, v2, Lk5/h$d;->a:Ljava/lang/String;

    const/4 v11, 0x1

    move-object v10, v12

    move-object/from16 v18, v12

    move v12, v5

    move/from16 p2, v13

    move-object/from16 v13, v18

    move/from16 v24, v14

    move v14, v6

    move v6, v15

    move/from16 v15, p2

    invoke-virtual/range {v10 .. v15}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v10

    move/from16 v12, p2

    move v11, v6

    goto :goto_15

    :cond_31
    move/from16 p2, v13

    move/from16 v24, v14

    move v11, v15

    iget-object v10, v2, Lk5/h$d;->a:Ljava/lang/String;

    move/from16 v12, p2

    invoke-virtual {v10, v5, v10, v6, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    :goto_15
    if-nez v10, :cond_33

    :cond_32
    :goto_16
    move v15, v5

    move v14, v11

    move/from16 v5, v17

    move/from16 v13, v25

    const/16 v16, 0x1

    goto/16 :goto_24

    :cond_33
    add-int v15, v5, v12

    goto :goto_19

    :cond_34
    move v12, v13

    move/from16 v24, v14

    move v11, v15

    sub-int v15, v5, v12

    iget v10, v1, Lk5/h$b;->b:I

    sub-int/2addr v10, v15

    if-ge v10, v12, :cond_35

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_18

    :cond_35
    if-eqz v8, :cond_36

    iget-object v10, v2, Lk5/h$d;->a:Ljava/lang/String;

    const/16 v19, 0x1

    move-object/from16 v18, v10

    move/from16 v20, v15

    move-object/from16 v21, v10

    move/from16 v22, v6

    move/from16 v23, v12

    invoke-virtual/range {v18 .. v23}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    goto :goto_17

    :cond_36
    iget-object v10, v2, Lk5/h$d;->a:Ljava/lang/String;

    invoke-virtual {v10, v15, v10, v6, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    :goto_17
    if-nez v6, :cond_37

    :goto_18
    goto :goto_16

    :cond_37
    :goto_19
    iget-object v7, v7, Lk5/c;->b:Lk5/c;

    goto :goto_1a

    :cond_38
    move/from16 v24, v14

    move v11, v15

    move v15, v5

    :goto_1a
    move v14, v11

    move/from16 v5, v17

    move/from16 v13, v25

    goto/16 :goto_24

    :cond_39
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {v6, v10}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    move/from16 v24, v6

    move/from16 v25, v13

    move v11, v14

    move v5, v15

    invoke-virtual {v7}, Lk5/c;->c()I

    move-result v6

    iget-object v10, v1, Lk5/h$b;->d:Lk5/b;

    if-eqz v10, :cond_3c

    if-lez v6, :cond_3b

    invoke-virtual {v10, v6}, Lk5/b;->a(I)I

    move-result v10

    invoke-virtual {v4, v10}, Lu4/a;->c(I)V

    iget-object v10, v1, Lk5/h$b;->d:Lk5/b;

    iget-object v10, v10, Lk5/b;->c:[I

    aput v5, v10, v6

    goto :goto_1b

    :cond_3b
    neg-int v6, v6

    invoke-virtual {v10, v6}, Lk5/b;->b(I)I

    move-result v10

    invoke-virtual {v4, v10}, Lu4/a;->c(I)V

    iget-object v10, v1, Lk5/h$b;->d:Lk5/b;

    iget-object v10, v10, Lk5/b;->r:[I

    aput v5, v10, v6

    :goto_1b
    invoke-virtual {v3, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lu4/a;->c(I)V

    :cond_3c
    iget-object v6, v7, Lk5/c;->b:Lk5/c;

    move v15, v5

    move-object v7, v6

    goto :goto_1a

    :cond_3d
    move/from16 v24, v6

    move/from16 v25, v13

    move v11, v14

    move v5, v15

    if-lez v25, :cond_3e

    move v15, v5

    goto :goto_1c

    :cond_3e
    add-int/lit8 v15, v5, -0x1

    :goto_1c
    if-ge v15, v10, :cond_32

    if-ltz v15, :cond_32

    invoke-virtual {v7}, Lk5/c;->c()I

    move-result v6

    iget-object v10, v2, Lk5/h$d;->a:Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eqz v8, :cond_42

    if-ne v6, v10, :cond_3f

    goto :goto_1d

    :cond_3f
    const v12, 0xffff

    if-gt v6, v12, :cond_32

    if-le v10, v12, :cond_40

    goto/16 :goto_16

    :cond_40
    int-to-char v6, v6

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    int-to-char v10, v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    if-ne v6, v10, :cond_41

    goto :goto_1d

    :cond_41
    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    invoke-static {v10}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v10

    if-ne v6, v10, :cond_32

    goto :goto_1d

    :cond_42
    if-ne v6, v10, :cond_32

    :goto_1d
    add-int v15, v5, v25

    iget-object v5, v7, Lk5/c;->b:Lk5/c;

    :goto_1e
    move-object v7, v5

    goto/16 :goto_1a

    :cond_43
    move/from16 v24, v6

    move/from16 v25, v13

    move v11, v14

    move v5, v15

    if-lez v25, :cond_44

    move v15, v5

    goto :goto_1f

    :cond_44
    add-int/lit8 v15, v5, -0x1

    :goto_1f
    if-ge v15, v10, :cond_32

    if-gez v15, :cond_45

    goto/16 :goto_16

    :cond_45
    const/4 v6, 0x4

    invoke-static {v11, v6}, Lk5/h;->e(II)Z

    move-result v6

    if-eqz v6, :cond_46

    iget-object v5, v2, Lk5/h$d;->a:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ld/f;->M(I)Z

    move-result v5

    if-eqz v5, :cond_48

    add-int v13, v15, v25

    if-ltz v13, :cond_48

    iget v5, v1, Lk5/h$b;->b:I

    if-ge v13, v5, :cond_48

    move v15, v13

    goto :goto_20

    :cond_46
    iget-object v6, v2, Lk5/h$d;->a:Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ld/f;->M(I)Z

    move-result v10

    if-eqz v10, :cond_47

    add-int v13, v15, v25

    if-ltz v13, :cond_47

    iget v10, v1, Lk5/h$b;->b:I

    if-ge v13, v10, :cond_47

    iget-object v10, v2, Lk5/h$d;->a:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v6, v10}, Ld/f;->l(II)I

    move-result v6

    move v15, v13

    :cond_47
    invoke-static {v6}, Lk5/h;->d(I)Z

    move-result v6

    if-eqz v6, :cond_48

    goto/16 :goto_16

    :cond_48
    :goto_20
    if-lez v25, :cond_49

    add-int/lit8 v15, v15, 0x1

    :cond_49
    iget-object v5, v7, Lk5/c;->b:Lk5/c;

    goto :goto_1e

    :goto_21
    if-nez v7, :cond_4b

    const/16 v6, 0x200

    invoke-static {v11, v6}, Lk5/h;->e(II)Z

    move-result v6

    if-eqz v6, :cond_4a

    iget v6, v1, Lk5/h$b;->b:I

    if-eq v5, v6, :cond_4a

    goto :goto_22

    :cond_4a
    move v15, v5

    goto :goto_23

    :cond_4b
    :goto_22
    move/from16 v15, v17

    :goto_23
    move v14, v11

    move/from16 v13, v25

    const/16 v16, 0x1

    move/from16 v26, v15

    move v15, v5

    move/from16 v5, v26

    :cond_4c
    :goto_24
    if-eqz v16, :cond_53

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4d

    return v5

    :cond_4d
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lk5/c;

    invoke-virtual {v4}, Lu4/a;->b()I

    move-result v15

    iget v6, v7, Lk5/c;->a:I

    const/16 v10, 0xf

    if-eq v6, v10, :cond_50

    packed-switch v6, :pswitch_data_3

    packed-switch v6, :pswitch_data_4

    const/4 v11, 0x1

    goto/16 :goto_28

    :pswitch_e
    check-cast v7, Lk5/c$c;

    if-ltz v5, :cond_4e

    iget-object v6, v7, Lk5/c$c;->e:Lk5/c;

    goto :goto_27

    :cond_4e
    iget-object v6, v7, Lk5/c$c;->f:Lk5/c;

    if-eqz v6, :cond_4f

    goto :goto_27

    :cond_4f
    iget-object v6, v7, Lk5/c;->b:Lk5/c;

    goto :goto_27

    :goto_25
    move/from16 v16, v9

    goto :goto_24

    :pswitch_f
    invoke-virtual {v4}, Lu4/a;->b()I

    move-result v14

    :pswitch_10
    if-ltz v5, :cond_4c

    iget-object v7, v7, Lk5/c;->b:Lk5/c;

    move v15, v5

    goto :goto_25

    :pswitch_11
    invoke-virtual {v4}, Lu4/a;->b()I

    move-result v13

    if-gez v5, :cond_e

    iget-object v5, v7, Lk5/c;->b:Lk5/c;

    :goto_26
    move-object v7, v5

    move/from16 v16, v9

    goto/16 :goto_b

    :pswitch_12
    invoke-virtual {v4}, Lu4/a;->b()I

    move-result v13

    if-ltz v5, :cond_e

    iget-object v5, v7, Lk5/c;->b:Lk5/c;

    goto :goto_26

    :pswitch_13
    invoke-virtual {v4}, Lu4/a;->b()I

    move-result v6

    const/4 v11, 0x1

    if-gez v5, :cond_4c

    add-int/2addr v6, v11

    invoke-virtual {v7}, Lk5/c;->g()I

    move-result v12

    if-ge v6, v12, :cond_e

    invoke-virtual {v3, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v6}, Lu4/a;->c(I)V

    invoke-virtual {v4, v15}, Lu4/a;->c(I)V

    invoke-virtual {v7, v6}, Lk5/c;->a(I)Lk5/c;

    move-result-object v6

    :goto_27
    move-object v7, v6

    goto :goto_25

    :pswitch_14
    const/4 v11, 0x1

    if-gez v5, :cond_52

    invoke-virtual {v7}, Lk5/c;->b()Lk5/c;

    move-result-object v7

    goto :goto_25

    :pswitch_15
    const/4 v11, 0x1

    if-gez v5, :cond_52

    iget-object v7, v7, Lk5/c;->b:Lk5/c;

    goto :goto_25

    :cond_50
    const/4 v11, 0x1

    invoke-virtual {v7}, Lk5/c;->c()I

    move-result v6

    invoke-virtual {v4}, Lu4/a;->b()I

    move-result v12

    iget-object v9, v1, Lk5/h$b;->d:Lk5/b;

    if-eqz v9, :cond_52

    if-gez v5, :cond_52

    if-lez v6, :cond_51

    iget-object v9, v9, Lk5/b;->c:[I

    aput v12, v9, v6

    goto :goto_28

    :cond_51
    neg-int v6, v6

    iget-object v9, v9, Lk5/b;->r:[I

    aput v12, v9, v6

    :cond_52
    :goto_28
    const/4 v9, 0x0

    goto/16 :goto_24

    :cond_53
    move/from16 v6, v24

    const/4 v5, 0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_d
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x40
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7
        :pswitch_15
        :pswitch_14
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x14
        :pswitch_12
        :pswitch_11
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public g(Ljava/lang/String;)Z
    .locals 10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lk5/h;->c1:Lk5/c;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lk5/h;->h()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_e

    :cond_0
    :goto_0
    iget-object v1, p0, Lk5/h;->e1:Lk5/h$b;

    if-nez v1, :cond_1

    new-instance v1, Lk5/h$b;

    invoke-direct {v1}, Lk5/h$b;-><init>()V

    iput-object v1, p0, Lk5/h;->e1:Lk5/h$b;

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lk5/h;->e1:Lk5/h$b;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lk5/h;->e1:Lk5/h$b;

    iget-boolean v3, v2, Lk5/h$b;->e:Z

    if-eqz v3, :cond_2

    new-instance v2, Lk5/h$b;

    invoke-direct {v2}, Lk5/h$b;-><init>()V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto/16 :goto_d

    :cond_2
    :goto_1
    iget v3, p0, Lk5/h;->d1:I

    invoke-virtual {v2, p1, v0, v3}, Lk5/h$b;->a(Ljava/lang/String;II)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-boolean v0, p0, Lk5/h;->Z:Z

    if-eqz v0, :cond_3

    new-instance v0, Lk5/b;

    invoke-direct {v0}, Lk5/b;-><init>()V

    iget v1, p0, Lk5/h;->x:I

    invoke-virtual {v0, v1}, Lk5/b;->c(I)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iput-object v0, v2, Lk5/h$b;->d:Lk5/b;

    iget v0, p0, Lk5/h;->r:I

    const/16 v1, 0x200

    invoke-static {v0, v1}, Lk5/h;->e(II)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lk5/h;->c1:Lk5/c;

    iget v0, v2, Lk5/h$b;->a:I

    iget v4, p0, Lk5/h;->r:I

    invoke-virtual {p0, v2, p1, v0, v4}, Lk5/h;->f(Lk5/h$b;Lk5/c;II)I

    move-result p0

    iget p1, v2, Lk5/h$b;->b:I

    if-ne p0, p1, :cond_5

    iget-object p1, v2, Lk5/h$b;->d:Lk5/b;

    if-eqz p1, :cond_4

    iget v0, v2, Lk5/h$b;->a:I

    iget-object v4, p1, Lk5/b;->c:[I

    aput v0, v4, v3

    iget-object p1, p1, Lk5/b;->r:[I

    aput p0, p1, v3

    :cond_4
    invoke-virtual {v2, v3}, Lk5/h$b;->b(Z)V

    goto/16 :goto_c

    :cond_5
    :goto_3
    move v1, v3

    goto/16 :goto_c

    :cond_6
    iget-boolean v0, p0, Lk5/h;->j1:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lk5/h;->i1:Lk5/a;

    iget v4, v2, Lk5/h$b;->a:I

    iget v5, v2, Lk5/h$b;->b:I

    invoke-virtual {v0, v4, v5, p1}, Lk5/a;->a(IILjava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_8

    iget-object v0, v2, Lk5/h$b;->d:Lk5/b;

    if-eqz v0, :cond_7

    iget-object v4, v0, Lk5/b;->c:[I

    aput p1, v4, v3

    iget-object p0, p0, Lk5/h;->g1:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, p1

    iget-object p1, v0, Lk5/b;->r:[I

    aput p0, p1, v3

    :cond_7
    invoke-virtual {v2, v3}, Lk5/h$b;->b(Z)V

    goto/16 :goto_c

    :cond_8
    invoke-virtual {v2, v3}, Lk5/h$b;->b(Z)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lk5/h;->g1:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lk5/h;->i1:Lk5/a;

    iget v4, v2, Lk5/h$b;->a:I

    iget v5, v2, Lk5/h$b;->b:I

    invoke-virtual {v0, v4, v5, p1}, Lk5/a;->a(IILjava/lang/String;)I

    move-result v0

    if-gez v0, :cond_a

    invoke-virtual {v2, v3}, Lk5/h$b;->b(Z)V

    goto :goto_3

    :cond_a
    iget v0, v2, Lk5/h$b;->b:I

    iget v4, p0, Lk5/h;->b1:I

    sub-int/2addr v0, v4

    iget-object v4, p0, Lk5/h;->c1:Lk5/c;

    const/4 v5, -0x1

    if-eqz v4, :cond_f

    iget v6, v4, Lk5/c;->a:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_f

    invoke-virtual {v4}, Lk5/c;->b()Lk5/c;

    move-result-object v4

    iget v4, v4, Lk5/c;->a:I

    if-nez v4, :cond_f

    iget v4, p0, Lk5/h;->r:I

    const/4 v6, 0x4

    invoke-static {v4, v6}, Lk5/h;->e(II)Z

    move-result v4

    if-eqz v4, :cond_b

    iget p1, v2, Lk5/h$b;->a:I

    iget-object v0, p0, Lk5/h;->c1:Lk5/c;

    iget v4, p0, Lk5/h;->r:I

    invoke-virtual {p0, v2, v0, p1, v4}, Lk5/h;->f(Lk5/h$b;Lk5/c;II)I

    move-result p0

    goto/16 :goto_b

    :cond_b
    iget v4, v2, Lk5/h$b;->a:I

    move v6, v1

    :goto_4
    if-gt v4, v0, :cond_d

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lk5/h;->d(I)Z

    move-result v7

    if-eqz v7, :cond_c

    move v6, v1

    goto :goto_5

    :cond_c
    if-eqz v6, :cond_e

    iget-object v5, p0, Lk5/h;->c1:Lk5/c;

    iget v6, p0, Lk5/h;->r:I

    invoke-virtual {p0, v2, v5, v4, v6}, Lk5/h;->f(Lk5/h$b;Lk5/c;II)I

    move-result v5

    if-ltz v5, :cond_e

    :cond_d
    move p0, v5

    goto :goto_6

    :cond_e
    move v6, v3

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :goto_6
    move p1, v4

    goto :goto_b

    :cond_f
    iget-object v4, p0, Lk5/h;->f1:Lk5/f;

    if-eqz v4, :cond_14

    iget v6, v2, Lk5/h$b;->a:I

    :goto_7
    if-gt v6, v0, :cond_12

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ld/f;->M(I)Z

    move-result v8

    if-eqz v8, :cond_10

    add-int/lit8 v8, v6, 0x1

    iget v9, v2, Lk5/h$b;->b:I

    if-ge v8, v9, :cond_10

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v7, v8}, Ld/f;->l(II)I

    move-result v7

    :cond_10
    invoke-virtual {v4, v7}, Lk5/f;->F(I)Z

    move-result v7

    if-nez v7, :cond_11

    goto :goto_8

    :cond_11
    iget-object v5, p0, Lk5/h;->c1:Lk5/c;

    iget v7, p0, Lk5/h;->r:I

    invoke-virtual {p0, v2, v5, v6, v7}, Lk5/h;->f(Lk5/h$b;Lk5/c;II)I

    move-result v5

    if-ltz v5, :cond_13

    :cond_12
    move p0, v5

    goto :goto_9

    :cond_13
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :goto_9
    move p1, v6

    goto :goto_b

    :cond_14
    iget p1, v2, Lk5/h$b;->a:I

    :goto_a
    if-gt p1, v0, :cond_15

    iget-object v4, p0, Lk5/h;->c1:Lk5/c;

    iget v5, p0, Lk5/h;->r:I

    invoke-virtual {p0, v2, v4, p1, v5}, Lk5/h;->f(Lk5/h$b;Lk5/c;II)I

    move-result v5

    if-ltz v5, :cond_16

    :cond_15
    move p0, v5

    goto :goto_b

    :cond_16
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :goto_b
    if-ltz p0, :cond_18

    iget-object v0, v2, Lk5/h$b;->d:Lk5/b;

    if-eqz v0, :cond_17

    iget-object v4, v0, Lk5/b;->c:[I

    aput p1, v4, v3

    iget-object p1, v0, Lk5/b;->r:[I

    aput p0, p1, v3

    :cond_17
    invoke-virtual {v2, v3}, Lk5/h$b;->b(Z)V

    goto :goto_c

    :cond_18
    invoke-virtual {v2, v3}, Lk5/h$b;->b(Z)V

    goto/16 :goto_3

    :goto_c
    return v1

    :goto_d
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_e
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final h()V
    .locals 9

    iget-object v0, p0, Lk5/h;->y:Lk5/m;

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lk5/h;->c1:Lk5/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    monitor-exit p0

    goto :goto_0

    :cond_0
    :try_start_1
    iput v2, p0, Lk5/h;->d1:I

    invoke-virtual {p0, v0, v3, v2}, Lk5/h;->a(Lk5/m;Lk5/c;Z)Lk5/c;

    move-result-object v0

    iput-object v0, p0, Lk5/h;->c1:Lk5/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    :goto_0
    iget-object v0, p0, Lk5/h;->y:Lk5/m;

    invoke-virtual {v0}, Lk5/m;->t()I

    move-result v0

    iput v0, p0, Lk5/h;->b1:I

    iput-object v3, p0, Lk5/h;->f1:Lk5/f;

    iget v0, p0, Lk5/h;->r:I

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lk5/h;->e(II)Z

    move-result v0

    const/16 v1, 0x200

    const/4 v4, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lk5/h;->r:I

    invoke-static {v0, v1}, Lk5/h;->e(II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lk5/m;->k()Lk5/f;

    move-result-object v0

    iget-object v5, p0, Lk5/h;->y:Lk5/m;

    iget v6, p0, Lk5/h;->r:I

    invoke-virtual {v5, v0, v6}, Lk5/m;->c(Lk5/f;I)I

    move-result v5

    if-ne v5, v4, :cond_1

    invoke-virtual {v0}, Lk5/f;->B()V

    iput-object v0, p0, Lk5/h;->f1:Lk5/f;

    :cond_1
    iget-object v0, p0, Lk5/h;->c1:Lk5/c;

    const/4 v5, 0x2

    if-eqz v0, :cond_5

    iget v6, v0, Lk5/c;->a:I

    const/4 v7, 0x6

    if-eq v6, v7, :cond_2

    if-ne v6, v4, :cond_5

    :cond_2
    iget-object v8, v0, Lk5/c;->b:Lk5/c;

    if-nez v8, :cond_5

    iput-boolean v4, p0, Lk5/h;->j1:Z

    if-ne v6, v7, :cond_3

    invoke-virtual {v0}, Lk5/c;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lk5/h;->g1:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lk5/c;->c()I

    move-result v0

    const/high16 v1, 0x10000

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lk5/h;->c1:Lk5/c;

    invoke-virtual {v0}, Lk5/c;->c()I

    move-result v0

    invoke-static {v0}, Ld/f;->q(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lk5/h;->g1:Ljava/lang/String;

    goto :goto_1

    :cond_4
    new-array v0, v4, [C

    iget-object v1, p0, Lk5/h;->c1:Lk5/c;

    invoke-virtual {v1}, Lk5/c;->c()I

    move-result v1

    int-to-char v1, v1

    aput-char v1, v0, v2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Lk5/h;->g1:Ljava/lang/String;

    :goto_1
    iget v0, p0, Lk5/h;->r:I

    iput v0, p0, Lk5/h;->h1:I

    new-instance v1, Lk5/a;

    iget-object v2, p0, Lk5/h;->g1:Ljava/lang/String;

    invoke-static {v0, v5}, Lk5/h;->e(II)Z

    move-result v0

    invoke-direct {v1, v2, v0}, Lk5/a;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lk5/h;->i1:Lk5/a;

    goto :goto_3

    :cond_5
    iget v0, p0, Lk5/h;->r:I

    const/16 v4, 0x100

    invoke-static {v0, v4}, Lk5/h;->e(II)Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lk5/h;->r:I

    invoke-static {v0, v1}, Lk5/h;->e(II)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lk5/m$e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lk5/m$e;->a:Lk5/m;

    iput v2, v0, Lk5/m$e;->b:I

    iget-object v1, p0, Lk5/h;->y:Lk5/m;

    iget v2, p0, Lk5/h;->r:I

    invoke-virtual {v1, v0, v2}, Lk5/m;->n(Lk5/m$e;I)V

    iget-object v1, v0, Lk5/m$e;->a:Lk5/m;

    if-nez v1, :cond_6

    move-object v1, v3

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Lk5/m;->x()Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lk5/h;->g1:Ljava/lang/String;

    iget v0, v0, Lk5/m$e;->b:I

    iput v0, p0, Lk5/h;->h1:I

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v5, :cond_7

    iput-object v3, p0, Lk5/h;->g1:Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Lk5/h;->g1:Ljava/lang/String;

    if-eqz v0, :cond_8

    new-instance v1, Lk5/a;

    iget v2, p0, Lk5/h;->h1:I

    invoke-static {v2, v5}, Lk5/h;->e(II)Z

    move-result v2

    invoke-direct {v1, v0, v2}, Lk5/a;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lk5/h;->i1:Lk5/a;

    :cond_8
    :goto_3
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final hashCode()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lk5/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lk5/h;->r:I

    invoke-static {p0}, Ld/f;->p(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lk5/h;->y:Lk5/m;

    iget p0, p0, Lk5/h;->r:I

    invoke-virtual {v0, p0}, Lk5/m;->A(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
