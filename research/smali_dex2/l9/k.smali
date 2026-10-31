.class public final Ll9/k;
.super Ljava/io/InputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ll9/n;


# direct methods
.method public synthetic constructor <init>(Ll9/n;I)V
    .registers 3

    .line 1
    iput p2, p0, Ll9/k;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ll9/k;->c:Ll9/n;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final b()V
    .registers 1

    .line 1
    return-void
.end method


# virtual methods
.method public final available()I
    .registers 5

    .line 1
    iget v0, p0, Ll9/k;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_32

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ll9/k;->c:Ll9/n;

    .line 7
    .line 8
    check-cast v0, Ll9/a0;

    .line 9
    .line 10
    iget-boolean v1, v0, Ll9/a0;->d:Z

    .line 11
    .line 12
    if-nez v1, :cond_1b

    .line 13
    .line 14
    iget-object v0, v0, Ll9/a0;->c:Ll9/l;

    .line 15
    .line 16
    iget-wide v0, v0, Ll9/l;->c:J

    .line 17
    .line 18
    const v2, 0x7fffffff

    .line 19
    .line 20
    .line 21
    int-to-long v2, v2

    .line 22
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    long-to-int v0, v0

    .line 27
    goto :goto_21

    .line 28
    :cond_1b
    const-string v0, "closed"

    .line 29
    .line 30
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    :goto_21
    return v0

    .line 35
    :pswitch_22
    iget-object v0, p0, Ll9/k;->c:Ll9/n;

    .line 36
    .line 37
    check-cast v0, Ll9/l;

    .line 38
    .line 39
    iget-wide v0, v0, Ll9/l;->c:J

    .line 40
    .line 41
    const v2, 0x7fffffff

    .line 42
    .line 43
    .line 44
    int-to-long v2, v2

    .line 45
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    long-to-int v0, v0

    .line 50
    return v0

    .line 51
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_22
    .end packed-switch
.end method

.method public final close()V
    .registers 2

    .line 1
    iget v0, p0, Ll9/k;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_e

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ll9/k;->c:Ll9/n;

    .line 7
    .line 8
    check-cast v0, Ll9/a0;

    .line 9
    .line 10
    invoke-virtual {v0}, Ll9/a0;->close()V

    .line 11
    .line 12
    .line 13
    :pswitch_c
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method

.method public final read()I
    .registers 7

    .line 1
    iget v0, p0, Ll9/k;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_4a

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ll9/k;->c:Ll9/n;

    .line 7
    .line 8
    check-cast v0, Ll9/a0;

    .line 9
    .line 10
    iget-object v1, v0, Ll9/a0;->c:Ll9/l;

    .line 11
    .line 12
    iget-boolean v2, v0, Ll9/a0;->d:Z

    .line 13
    .line 14
    if-nez v2, :cond_2e

    .line 15
    .line 16
    iget-wide v2, v1, Ll9/l;->c:J

    .line 17
    .line 18
    const-wide/16 v4, 0x0

    .line 19
    .line 20
    cmp-long v2, v2, v4

    .line 21
    .line 22
    if-nez v2, :cond_27

    .line 23
    .line 24
    iget-object v0, v0, Ll9/a0;->b:Ll9/g0;

    .line 25
    .line 26
    const-wide/16 v2, 0x2000

    .line 27
    .line 28
    invoke-interface {v0, v1, v2, v3}, Ll9/g0;->read(Ll9/l;J)J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    const-wide/16 v4, -0x1

    .line 33
    .line 34
    cmp-long v0, v2, v4

    .line 35
    .line 36
    if-nez v0, :cond_27

    .line 37
    .line 38
    const/4 v0, -0x1

    .line 39
    goto :goto_34

    .line 40
    :cond_27
    invoke-virtual {v1}, Ll9/l;->readByte()B

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    and-int/lit16 v0, v0, 0xff

    .line 45
    .line 46
    goto :goto_34

    .line 47
    :cond_2e
    const-string v0, "closed"

    .line 48
    .line 49
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    :goto_34
    return v0

    .line 54
    :pswitch_35
    iget-object v0, p0, Ll9/k;->c:Ll9/n;

    .line 55
    .line 56
    check-cast v0, Ll9/l;

    .line 57
    .line 58
    iget-wide v1, v0, Ll9/l;->c:J

    .line 59
    .line 60
    const-wide/16 v3, 0x0

    .line 61
    .line 62
    cmp-long v1, v1, v3

    .line 63
    .line 64
    if-lez v1, :cond_48

    .line 65
    .line 66
    invoke-virtual {v0}, Ll9/l;->readByte()B

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    and-int/lit16 v0, v0, 0xff

    .line 71
    .line 72
    goto :goto_49

    .line 73
    :cond_48
    const/4 v0, -0x1

    .line 74
    :goto_49
    return v0

    .line 75
    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_35
    .end packed-switch
.end method

.method public final read([BII)I
    .registers 13

    iget v0, p0, Ll9/k;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_46

    .line 75
    iget-object v0, p0, Ll9/k;->c:Ll9/n;

    check-cast v0, Ll9/a0;

    iget-object v1, v0, Ll9/a0;->c:Ll9/l;

    iget-boolean v2, v0, Ll9/a0;->d:Z

    if-nez v2, :cond_36

    .line 76
    array-length v2, p1

    int-to-long v3, v2

    int-to-long v5, p2

    int-to-long v7, p3

    invoke-static/range {v3 .. v8}, Ll9/b;->d(JJJ)V

    .line 77
    iget-wide v2, v1, Ll9/l;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_31

    .line 78
    iget-object v0, v0, Ll9/a0;->b:Ll9/g0;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Ll9/g0;->read(Ll9/l;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_31

    const/4 p1, -0x1

    goto :goto_3c

    .line 79
    :cond_31
    invoke-virtual {v1, p1, p2, p3}, Ll9/l;->read([BII)I

    move-result p1

    goto :goto_3c

    .line 80
    :cond_36
    const-string p1, "closed"

    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_3c
    return p1

    .line 81
    :pswitch_3d
    iget-object v0, p0, Ll9/k;->c:Ll9/n;

    check-cast v0, Ll9/l;

    invoke-virtual {v0, p1, p2, p3}, Ll9/l;->read([BII)I

    move-result p1

    return p1

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_3d
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    iget v0, p0, Ll9/k;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_32

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Ll9/k;->c:Ll9/n;

    .line 12
    .line 13
    check-cast v1, Ll9/a0;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ".inputStream()"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :pswitch_1b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Ll9/k;->c:Ll9/n;

    .line 34
    .line 35
    check-cast v1, Ll9/l;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, ".inputStream()"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    nop

    .line 51
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1b
    .end packed-switch
.end method
