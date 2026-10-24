.class public final Lj4/a$a;
.super Lj4/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj4/a<",
        "[B",
        "Lj4/a$a;",
        ">;"
    }
.end annotation


# virtual methods
.method public final i()[B
    .locals 0

    iget-object p0, p0, Lj4/a;->c:Ljava/lang/Object;

    check-cast p0, [B

    return-object p0
.end method

.method public final varargs j([Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    .locals 0

    new-instance p1, Ljava/io/ByteArrayInputStream;

    iget-object p0, p0, Lj4/a;->c:Ljava/lang/Object;

    check-cast p0, [B

    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1
.end method
