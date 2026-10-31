.class public final synthetic Lorg/apache/commons/io/input/j;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/function/IOConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Lorg/apache/commons/io/input/j;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/apache/commons/io/input/j;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget v0, p0, Lorg/apache/commons/io/input/j;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_60

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/input/j;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lorg/apache/commons/io/output/UncheckedFilterOutputStream;

    .line 9
    .line 10
    check-cast p1, [B

    .line 11
    .line 12
    invoke-static {v0, p1}, Lorg/apache/commons/io/output/UncheckedFilterOutputStream;->c(Lorg/apache/commons/io/output/UncheckedFilterOutputStream;[B)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_f
    iget-object v0, p0, Lorg/apache/commons/io/input/j;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lorg/apache/commons/io/output/ProxyWriter;

    .line 19
    .line 20
    check-cast p1, Ljava/io/IOException;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lorg/apache/commons/io/output/ProxyWriter;->handleIOException(Ljava/io/IOException;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_19
    iget-object v0, p0, Lorg/apache/commons/io/input/j;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lorg/apache/commons/io/output/ProxyOutputStream;

    .line 29
    .line 30
    check-cast p1, Ljava/io/IOException;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lorg/apache/commons/io/output/ProxyOutputStream;->handleIOException(Ljava/io/IOException;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_23
    iget-object v0, p0, Lorg/apache/commons/io/input/j;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, [C

    .line 39
    .line 40
    check-cast p1, Ljava/io/Writer;

    .line 41
    .line 42
    invoke-static {v0, p1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->c([CLjava/io/Writer;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_2d
    iget-object v0, p0, Lorg/apache/commons/io/input/j;->b:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Ljava/lang/CharSequence;

    .line 49
    .line 50
    check-cast p1, Ljava/io/Writer;

    .line 51
    .line 52
    invoke-static {v0, p1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->c0(Ljava/lang/CharSequence;Ljava/io/Writer;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_37
    iget-object v0, p0, Lorg/apache/commons/io/input/j;->b:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Ljava/lang/String;

    .line 59
    .line 60
    check-cast p1, Ljava/io/Writer;

    .line 61
    .line 62
    invoke-static {v0, p1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->b(Ljava/lang/String;Ljava/io/Writer;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_41
    iget-object v0, p0, Lorg/apache/commons/io/input/j;->b:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    check-cast p1, Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v0, p1}, Lorg/apache/commons/io/input/XmlStreamReader;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :pswitch_4b
    iget-object v0, p0, Lorg/apache/commons/io/input/j;->b:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v0, Lorg/apache/commons/io/input/ProxyInputStream;

    .line 79
    .line 80
    check-cast p1, Ljava/io/IOException;

    .line 81
    .line 82
    invoke-virtual {v0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;->handleIOException(Ljava/io/IOException;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :pswitch_55
    iget-object v0, p0, Lorg/apache/commons/io/input/j;->b:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v0, Ljava/io/IOException;

    .line 89
    .line 90
    check-cast p1, Lorg/apache/commons/io/input/ObservableInputStream$Observer;

    .line 91
    .line 92
    invoke-static {v0, p1}, Lorg/apache/commons/io/input/ObservableInputStream;->c(Ljava/io/IOException;Lorg/apache/commons/io/input/ObservableInputStream$Observer;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    nop

    .line 97
    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_55
        :pswitch_4b
        :pswitch_41
        :pswitch_37
        :pswitch_2d
        :pswitch_23
        :pswitch_19
        :pswitch_f
    .end packed-switch
.end method
