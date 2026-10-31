.class public Lorg/apache/commons/io/monitor/FileEntry;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final EMPTY_FILE_ENTRY_ARRAY:[Lorg/apache/commons/io/monitor/FileEntry;

.field private static final serialVersionUID:J = -0x22c5e8fed07c1d41L


# instance fields
.field private children:[Lorg/apache/commons/io/monitor/FileEntry;

.field private directory:Z

.field private exists:Z

.field private final file:Ljava/io/File;

.field private lastModified:Lorg/apache/commons/io/monitor/SerializableFileTime;

.field private length:J

.field private name:Ljava/lang/String;

.field private final parent:Lorg/apache/commons/io/monitor/FileEntry;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lorg/apache/commons/io/monitor/FileEntry;

    .line 3
    .line 4
    sput-object v0, Lorg/apache/commons/io/monitor/FileEntry;->EMPTY_FILE_ENTRY_ARRAY:[Lorg/apache/commons/io/monitor/FileEntry;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/io/monitor/FileEntry;-><init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/apache/commons/io/monitor/SerializableFileTime;->EPOCH:Lorg/apache/commons/io/monitor/SerializableFileTime;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:Lorg/apache/commons/io/monitor/SerializableFileTime;

    .line 7
    .line 8
    const-string v0, "file"

    .line 9
    .line 10
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lorg/apache/commons/io/monitor/FileEntry;->file:Ljava/io/File;

    .line 14
    .line 15
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->parent:Lorg/apache/commons/io/monitor/FileEntry;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->name:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public getChildren()[Lorg/apache/commons/io/monitor/FileEntry;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->children:[Lorg/apache/commons/io/monitor/FileEntry;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_5
    sget-object v0, Lorg/apache/commons/io/monitor/FileEntry;->EMPTY_FILE_ENTRY_ARRAY:[Lorg/apache/commons/io/monitor/FileEntry;

    .line 7
    .line 8
    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->file:Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLastModified()J
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:Lorg/apache/commons/io/monitor/SerializableFileTime;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/io/monitor/SerializableFileTime;->toMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getLastModifiedFileTime()Ljava/nio/file/attribute/FileTime;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:Lorg/apache/commons/io/monitor/SerializableFileTime;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/io/monitor/SerializableFileTime;->unwrap()Ljava/nio/file/attribute/FileTime;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getLength()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLevel()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->parent:Lorg/apache/commons/io/monitor/FileEntry;

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    invoke-virtual {v0}, Lorg/apache/commons/io/monitor/FileEntry;->getLevel()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getParent()Lorg/apache/commons/io/monitor/FileEntry;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->parent:Lorg/apache/commons/io/monitor/FileEntry;

    .line 2
    .line 3
    return-object v0
.end method

.method public isDirectory()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    .line 2
    .line 3
    return v0
.end method

.method public isExists()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    .line 2
    .line 3
    return v0
.end method

.method public newChildInstance(Ljava/io/File;)Lorg/apache/commons/io/monitor/FileEntry;
    .registers 3

    .line 1
    new-instance v0, Lorg/apache/commons/io/monitor/FileEntry;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/monitor/FileEntry;-><init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public refresh(Ljava/io/File;)Z
    .registers 12

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:Lorg/apache/commons/io/monitor/SerializableFileTime;

    .line 4
    .line 5
    iget-boolean v2, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    .line 6
    .line 7
    iget-wide v3, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    iput-object v5, p0, Lorg/apache/commons/io/monitor/FileEntry;->name:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {p1}, Lc5/h;->i(Ljava/io/File;)Ljava/nio/file/Path;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const/4 v6, 0x0

    .line 20
    new-array v7, v6, [Ljava/nio/file/LinkOption;

    .line 21
    .line 22
    invoke-static {v5, v7}, Lkotlin/io/path/f;->x(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    iput-boolean v5, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    .line 27
    .line 28
    const/4 v7, 0x1

    .line 29
    if-eqz v5, :cond_26

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_26

    .line 36
    .line 37
    move v5, v7

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    move v5, v6

    .line 40
    :goto_27
    iput-boolean v5, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    .line 41
    .line 42
    :try_start_29
    iget-boolean v5, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    .line 43
    .line 44
    if-eqz v5, :cond_32

    .line 45
    .line 46
    invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->lastModifiedFileTime(Ljava/io/File;)Ljava/nio/file/attribute/FileTime;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    goto :goto_34

    .line 51
    :cond_32
    sget-object v5, Lorg/apache/commons/io/file/attribute/FileTimes;->EPOCH:Ljava/nio/file/attribute/FileTime;

    .line 52
    .line 53
    :goto_34
    invoke-virtual {p0, v5}, Lorg/apache/commons/io/monitor/FileEntry;->setLastModified(Ljava/nio/file/attribute/FileTime;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_37} :catch_38

    .line 54
    .line 55
    .line 56
    goto :goto_3d

    .line 57
    :catch_38
    sget-object v5, Lorg/apache/commons/io/monitor/SerializableFileTime;->EPOCH:Lorg/apache/commons/io/monitor/SerializableFileTime;

    .line 58
    .line 59
    invoke-virtual {p0, v5}, Lorg/apache/commons/io/monitor/FileEntry;->setLastModified(Lorg/apache/commons/io/monitor/SerializableFileTime;)V

    .line 60
    .line 61
    .line 62
    :goto_3d
    iget-boolean v5, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    .line 63
    .line 64
    if-eqz v5, :cond_4a

    .line 65
    .line 66
    iget-boolean v5, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    .line 67
    .line 68
    if-nez v5, :cond_4a

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 71
    .line 72
    .line 73
    move-result-wide v8

    .line 74
    goto :goto_4c

    .line 75
    :cond_4a
    const-wide/16 v8, 0x0

    .line 76
    .line 77
    :goto_4c
    iput-wide v8, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    .line 78
    .line 79
    iget-boolean p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    .line 80
    .line 81
    if-ne p1, v0, :cond_64

    .line 82
    .line 83
    iget-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:Lorg/apache/commons/io/monitor/SerializableFileTime;

    .line 84
    .line 85
    invoke-virtual {p1, v1}, Lorg/apache/commons/io/monitor/SerializableFileTime;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_64

    .line 90
    .line 91
    iget-boolean p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    .line 92
    .line 93
    if-ne p1, v2, :cond_64

    .line 94
    .line 95
    iget-wide v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    .line 96
    .line 97
    cmp-long p1, v0, v3

    .line 98
    .line 99
    if-eqz p1, :cond_65

    .line 100
    .line 101
    :cond_64
    move v6, v7

    .line 102
    :cond_65
    return v6
.end method

.method public varargs setChildren([Lorg/apache/commons/io/monitor/FileEntry;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->children:[Lorg/apache/commons/io/monitor/FileEntry;

    .line 2
    .line 3
    return-void
.end method

.method public setDirectory(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    .line 2
    .line 3
    return-void
.end method

.method public setExists(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    .line 2
    .line 3
    return-void
.end method

.method public setLastModified(J)V
    .registers 3

    .line 10
    invoke-static {p1, p2}, Lorg/apache/commons/io/file/e;->l(J)Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/monitor/FileEntry;->setLastModified(Ljava/nio/file/attribute/FileTime;)V

    return-void
.end method

.method public setLastModified(Ljava/nio/file/attribute/FileTime;)V
    .registers 3

    .line 1
    new-instance v0, Lorg/apache/commons/io/monitor/SerializableFileTime;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/apache/commons/io/monitor/SerializableFileTime;-><init>(Ljava/nio/file/attribute/FileTime;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/monitor/FileEntry;->setLastModified(Lorg/apache/commons/io/monitor/SerializableFileTime;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setLastModified(Lorg/apache/commons/io/monitor/SerializableFileTime;)V
    .registers 2

    .line 11
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:Lorg/apache/commons/io/monitor/SerializableFileTime;

    return-void
.end method

.method public setLength(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    .line 2
    .line 3
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
