.class public final enum Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;
.super Ljava/lang/Enum;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/imap/IMAPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FETCH_ITEM_NAMES"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

.field public static final enum ALL:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

.field public static final enum BODY:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

.field public static final enum BODYSTRUCTURE:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

.field public static final enum ENVELOPE:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

.field public static final enum FAST:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

.field public static final enum FLAGS:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

.field public static final enum FULL:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

.field public static final enum INTERNALDATE:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

.field public static final enum RFC822:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

.field public static final enum UID:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;


# direct methods
.method private static synthetic $values()[Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;
    .registers 10

    .line 1
    sget-object v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->ALL:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 2
    .line 3
    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->FAST:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 4
    .line 5
    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->FULL:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 6
    .line 7
    sget-object v3, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->BODY:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 8
    .line 9
    sget-object v4, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->BODYSTRUCTURE:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 10
    .line 11
    sget-object v5, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->ENVELOPE:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 12
    .line 13
    sget-object v6, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->FLAGS:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 14
    .line 15
    sget-object v7, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->INTERNALDATE:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 16
    .line 17
    sget-object v8, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->RFC822:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 18
    .line 19
    sget-object v9, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->UID:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 20
    .line 21
    filled-new-array/range {v0 .. v9}, [Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 2
    .line 3
    const-string v1, "ALL"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->ALL:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 10
    .line 11
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 12
    .line 13
    const-string v1, "FAST"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->FAST:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 20
    .line 21
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 22
    .line 23
    const-string v1, "FULL"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->FULL:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 30
    .line 31
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 32
    .line 33
    const-string v1, "BODY"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->BODY:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 40
    .line 41
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 42
    .line 43
    const-string v1, "BODYSTRUCTURE"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->BODYSTRUCTURE:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 50
    .line 51
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 52
    .line 53
    const-string v1, "ENVELOPE"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->ENVELOPE:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 60
    .line 61
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 62
    .line 63
    const-string v1, "FLAGS"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->FLAGS:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 70
    .line 71
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 72
    .line 73
    const-string v1, "INTERNALDATE"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->INTERNALDATE:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 80
    .line 81
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 82
    .line 83
    const-string v1, "RFC822"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->RFC822:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 91
    .line 92
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 93
    .line 94
    const-string v1, "UID"

    .line 95
    .line 96
    const/16 v2, 0x9

    .line 97
    .line 98
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->UID:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 102
    .line 103
    invoke-static {}, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->$values()[Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->$VALUES:[Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 108
    .line 109
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;
    .registers 2

    .line 1
    const-class v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;
    .registers 1

    .line 1
    sget-object v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->$VALUES:[Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    .line 8
    .line 9
    return-object v0
.end method
