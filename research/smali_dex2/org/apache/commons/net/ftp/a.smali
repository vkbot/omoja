.class public final synthetic Lorg/apache/commons/net/ftp/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/net/ftp/FTPFileFilter;
.implements Lorg/apache/commons/net/imap/IMAP$IMAPChunkListener;
.implements Lt4/c;
.implements Lk5/a;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lorg/apache/commons/net/ftp/a;->b:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic b(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance p1, Ljava/io/IOException;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public static synthetic c(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0
.end method

.method public static synthetic d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 1
    new-instance v0, La8/a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 p1, 0x4

    .line 19
    invoke-direct {v0, p0, p1}, La8/a;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    throw v0
.end method


# virtual methods
.method public a(Ld2/h;)Ljava/lang/Object;
    .registers 6

    .line 1
    iget v0, p0, Lorg/apache/commons/net/ftp/a;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_64

    .line 4
    .line 5
    .line 6
    :pswitch_5
    invoke-static {p1}, Lcom/google/firebase/datatransport/TransportRegistrar;->a(Ld2/h;)La2/c;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :pswitch_a
    invoke-static {p1}, Lcom/google/firebase/datatransport/TransportRegistrar;->b(Ld2/h;)La2/c;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :pswitch_f
    invoke-static {p1}, Lcom/google/firebase/datatransport/TransportRegistrar;->c(Ld2/h;)La2/c;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :pswitch_14
    sget-object p1, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->a:Lt4/l;

    .line 22
    .line 23
    sget-object p1, Lu4/j;->b:Lu4/j;

    .line 24
    .line 25
    return-object p1

    .line 26
    :pswitch_19
    sget-object p1, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->b:Lt4/l;

    .line 27
    .line 28
    invoke-virtual {p1}, Lt4/l;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    .line 33
    .line 34
    return-object p1

    .line 35
    :pswitch_22
    sget-object p1, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->c:Lt4/l;

    .line 36
    .line 37
    invoke-virtual {p1}, Lt4/l;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    .line 42
    .line 43
    return-object p1

    .line 44
    :pswitch_2b
    sget-object p1, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->a:Lt4/l;

    .line 45
    .line 46
    invoke-virtual {p1}, Lt4/l;->get()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_34
    new-instance v0, Lr5/b;

    .line 54
    .line 55
    const-class v1, Lr5/a;

    .line 56
    .line 57
    invoke-static {v1}, Lt4/p;->a(Ljava/lang/Class;)Lt4/p;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p1, v1}, Ld2/h;->e(Lt4/p;)Ljava/util/Set;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    sget-object v1, Lr5/c;->d:Lr5/c;

    .line 66
    .line 67
    if-nez v1, :cond_5a

    .line 68
    .line 69
    const-class v2, Lr5/c;

    .line 70
    .line 71
    monitor-enter v2

    .line 72
    :try_start_47
    sget-object v1, Lr5/c;->d:Lr5/c;

    .line 73
    .line 74
    if-nez v1, :cond_56

    .line 75
    .line 76
    new-instance v1, Lr5/c;

    .line 77
    .line 78
    const/4 v3, 0x0

    .line 79
    invoke-direct {v1, v3}, Lr5/c;-><init>(I)V

    .line 80
    .line 81
    .line 82
    sput-object v1, Lr5/c;->d:Lr5/c;

    .line 83
    .line 84
    goto :goto_56

    .line 85
    :catchall_54
    move-exception p1

    .line 86
    goto :goto_58

    .line 87
    :cond_56
    :goto_56
    monitor-exit v2

    .line 88
    goto :goto_5a

    .line 89
    :goto_58
    monitor-exit v2
    :try_end_59
    .catchall {:try_start_47 .. :try_end_59} :catchall_54

    .line 90
    throw p1

    .line 91
    :cond_5a
    :goto_5a
    invoke-direct {v0, p1, v1}, Lr5/b;-><init>(Ljava/util/Set;Lr5/c;)V

    .line 92
    .line 93
    .line 94
    return-object v0

    .line 95
    :pswitch_5e
    invoke-static {p1}, Lcom/google/firebase/abt/component/AbtRegistrar;->a(Ld2/h;)Lq4/a;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    return-object p1

    .line 100
    nop

    .line 101
    :pswitch_data_64
    .packed-switch 0x4
        :pswitch_5e
        :pswitch_34
        :pswitch_5
        :pswitch_5
        :pswitch_2b
        :pswitch_22
        :pswitch_19
        :pswitch_14
        :pswitch_f
        :pswitch_a
    .end packed-switch
.end method

.method public accept(Lorg/apache/commons/net/ftp/FTPFile;)Z
    .registers 3

    .line 1
    iget v0, p0, Lorg/apache/commons/net/ftp/a;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_10

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPFileFilters;->b(Lorg/apache/commons/net/ftp/FTPFile;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :pswitch_a
    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    nop

    .line 17
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch
.end method

.method public chunkReceived(Lorg/apache/commons/net/imap/IMAP;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lorg/apache/commons/net/imap/IMAP;->a(Lorg/apache/commons/net/imap/IMAP;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public e(Lk5/b;)V
    .registers 2

    .line 1
    return-void
.end method
