.class final Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/file/PathUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RelativeSortedPaths"
.end annotation


# instance fields
.field final equals:Z

.field final relativeFileList1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field final relativeFileList2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)V
    .registers 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_d

    .line 7
    .line 8
    if-nez p2, :cond_d

    .line 9
    .line 10
    iput-boolean v0, p0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equals:Z

    .line 11
    .line 12
    goto/16 :goto_87

    .line 13
    .line 14
    :cond_d
    const/4 v2, 0x0

    .line 15
    if-nez p1, :cond_12

    .line 16
    .line 17
    move v3, v0

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    move v3, v2

    .line 20
    :goto_13
    if-nez p2, :cond_17

    .line 21
    .line 22
    move v4, v0

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move v4, v2

    .line 25
    :goto_18
    xor-int/2addr v3, v4

    .line 26
    if-eqz v3, :cond_1f

    .line 27
    .line 28
    iput-boolean v2, p0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equals:Z

    .line 29
    .line 30
    goto/16 :goto_87

    .line 31
    .line 32
    :cond_1f
    invoke-static {p1, p4}, Lorg/apache/commons/io/d;->w(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-static {p2, p4}, Lorg/apache/commons/io/d;->w(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 37
    .line 38
    .line 39
    move-result p4

    .line 40
    if-nez v3, :cond_7f

    .line 41
    .line 42
    if-eqz p4, :cond_2c

    .line 43
    .line 44
    goto :goto_7f

    .line 45
    :cond_2c
    # invokes: Lorg/apache/commons/io/file/PathUtils;->accumulate(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    invoke-static {p1, p3, p5}, Lorg/apache/commons/io/file/PathUtils;->access$000(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    .line 46
    .line 47
    .line 48
    move-result-object p4

    .line 49
    # invokes: Lorg/apache/commons/io/file/PathUtils;->accumulate(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    invoke-static {p2, p3, p5}, Lorg/apache/commons/io/file/PathUtils;->access$000(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    invoke-virtual {p4}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->getDirList()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p5

    .line 57
    invoke-interface {p5}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result p5

    .line 61
    invoke-virtual {p3}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->getDirList()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-ne p5, v3, :cond_7c

    .line 70
    .line 71
    invoke-virtual {p4}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->getFileList()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object p5

    .line 75
    invoke-interface {p5}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result p5

    .line 79
    invoke-virtual {p3}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->getFileList()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eq p5, v3, :cond_59

    .line 88
    .line 89
    goto :goto_7c

    .line 90
    :cond_59
    invoke-virtual {p4, p1, v0, v1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->relativizeDirectories(Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object p5

    .line 94
    invoke-virtual {p3, p2, v0, v1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->relativizeDirectories(Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-static {p5, v3}, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equalsIgnoreFileSystem(Ljava/util/List;Ljava/util/List;)Z

    .line 99
    .line 100
    .line 101
    move-result p5

    .line 102
    if-nez p5, :cond_6a

    .line 103
    .line 104
    iput-boolean v2, p0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equals:Z

    .line 105
    .line 106
    goto :goto_87

    .line 107
    :cond_6a
    invoke-virtual {p4, p1, v0, v1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->relativizeFiles(Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p3, p2, v0, v1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->relativizeFiles(Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-static {p1, v1}, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equalsIgnoreFileSystem(Ljava/util/List;Ljava/util/List;)Z

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    iput-boolean p2, p0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equals:Z

    .line 120
    .line 121
    move-object v5, v1

    .line 122
    move-object v1, p1

    .line 123
    move-object p1, v5

    .line 124
    goto :goto_88

    .line 125
    :cond_7c
    :goto_7c
    iput-boolean v2, p0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equals:Z

    .line 126
    .line 127
    goto :goto_87

    .line 128
    :cond_7f
    :goto_7f
    if-eqz v3, :cond_84

    .line 129
    .line 130
    if-eqz p4, :cond_84

    .line 131
    .line 132
    goto :goto_85

    .line 133
    :cond_84
    move v0, v2

    .line 134
    :goto_85
    iput-boolean v0, p0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equals:Z

    .line 135
    .line 136
    :goto_87
    move-object p1, v1

    .line 137
    :goto_88
    iput-object v1, p0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->relativeFileList1:Ljava/util/List;

    .line 138
    .line 139
    iput-object p1, p0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->relativeFileList2:Ljava/util/List;

    .line 140
    .line 141
    return-void
.end method

.method public synthetic constructor <init>(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;Lorg/apache/commons/io/file/PathUtils$1;)V
    .registers 7

    .line 142
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;-><init>(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)V

    return-void
.end method

.method private static equalsIgnoreFileSystem(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .registers 5

    .line 58
    invoke-static {p0}, Lkotlin/internal/jdk8/a;->g(Ljava/nio/file/Path;)Ljava/nio/file/FileSystem;

    move-result-object v0

    .line 59
    invoke-static {p1}, Lkotlin/internal/jdk8/a;->g(Ljava/nio/file/Path;)Ljava/nio/file/FileSystem;

    move-result-object v1

    if-ne v0, v1, :cond_f

    .line 60
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/e;->x(Ljava/nio/file/Path;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 61
    :cond_f
    invoke-static {v0}, Lkotlin/internal/jdk8/a;->d(Ljava/nio/file/FileSystem;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v1}, Lkotlin/internal/jdk8/a;->d(Ljava/nio/file/FileSystem;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {p0}, Lai/onnxruntime/c;->s(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object p0

    .line 64
    invoke-static {p1}, Lai/onnxruntime/c;->s(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 66
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 67
    :cond_2a
    invoke-static {v0, p0}, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->extractKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p1}, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->extractKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static equalsIgnoreFileSystem(Ljava/util/List;Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eq v0, v1, :cond_b

    .line 10
    .line 11
    goto :goto_35

    .line 12
    :cond_b
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :cond_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_37

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_37

    .line 31
    .line 32
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lkotlin/internal/jdk8/a;->m(Ljava/lang/Object;)Ljava/nio/file/Path;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Lkotlin/internal/jdk8/a;->m(Ljava/lang/Object;)Ljava/nio/file/Path;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v0, v1}, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equalsIgnoreFileSystem(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_13

    .line 53
    .line 54
    :goto_35
    const/4 p0, 0x0

    .line 55
    return p0

    .line 56
    :cond_37
    const/4 p0, 0x1

    .line 57
    return p0
.end method

.method public static extractKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "\\"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, ">"

    .line 16
    .line 17
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method
