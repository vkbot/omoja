.class public final Lorg/apache/logging/log4j/core/util/Transform;
.super Ljava/lang/Object;
.source "Transform.java"


# static fields
.field private static final CDATA_EMBEDED_END:Ljava/lang/String; = "]]>]]&gt;<![CDATA["

.field private static final CDATA_END:Ljava/lang/String; = "]]>"

.field private static final CDATA_END_LEN:I

.field private static final CDATA_PSEUDO_END:Ljava/lang/String; = "]]&gt;"

.field private static final CDATA_START:Ljava/lang/String; = "<![CDATA["


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-string v0, "]]>"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/apache/logging/log4j/core/util/Transform;->CDATA_END_LEN:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static appendEscapingCData(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "buf",
            "str"
        }
    .end annotation

    .line 99
    if-eqz p1, :cond_3

    .line 100
    const-string v0, "]]>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 101
    .local v1, "end":I
    if-gez v1, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 104
    :cond_0
    const/4 v2, 0x0

    .line 105
    .local v2, "start":I
    :goto_0
    const/4 v3, -0x1

    if-le v1, v3, :cond_2

    .line 106
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v3, "]]>]]&gt;<![CDATA["

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    sget v3, Lorg/apache/logging/log4j/core/util/Transform;->CDATA_END_LEN:I

    add-int v2, v1, v3

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 110
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 112
    :cond_1
    return-void

    .line 115
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .end local v1    # "end":I
    .end local v2    # "start":I
    :cond_3
    :goto_1
    return-void
.end method

.method public static escapeHtmlTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "input"
        }
    .end annotation

    .line 49
    invoke-static {p0}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 50
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x3c

    const/16 v3, 0x26

    const/16 v4, 0x3e

    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 51
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 52
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 53
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v5, :cond_0

    goto :goto_2

    .line 60
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x6

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 62
    .local v1, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 63
    .local v5, "len":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_6

    .line 64
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 65
    .local v7, "ch":C
    if-le v7, v4, :cond_1

    .line 66
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 68
    :cond_1
    if-eq v7, v0, :cond_5

    if-eq v7, v3, :cond_4

    if-eq v7, v2, :cond_3

    if-eq v7, v4, :cond_2

    .line 82
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 73
    :cond_2
    const-string v8, "&gt;"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    goto :goto_1

    .line 70
    :cond_3
    const-string v8, "&lt;"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    goto :goto_1

    .line 76
    :cond_4
    const-string v8, "&amp;"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    goto :goto_1

    .line 79
    :cond_5
    const-string v8, "&quot;"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    nop

    .line 63
    .end local v7    # "ch":C
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 86
    .end local v6    # "i":I
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 54
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .end local v5    # "len":I
    :cond_7
    :goto_2
    return-object p0
.end method

.method public static escapeJsonControlCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "input"
        }
    .end annotation

    .line 133
    invoke-static {p0}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 134
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0xd

    const/16 v3, 0xc

    const/16 v4, 0x2f

    const/16 v5, 0x5c

    const/4 v6, -0x1

    if-ne v1, v6, :cond_0

    .line 135
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 136
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v6, :cond_0

    const/16 v1, 0x8

    .line 137
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 138
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v6, :cond_0

    const/16 v1, 0xa

    .line 139
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 140
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v6, :cond_0

    const/16 v1, 0x9

    .line 141
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v6, :cond_0

    goto/16 :goto_2

    .line 145
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x6

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 147
    .local v1, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 148
    .local v6, "len":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_6

    .line 149
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 150
    .local v8, "ch":C
    const-string v9, "\\"

    .line 151
    .local v9, "escBs":Ljava/lang/String;
    const-string v10, "\\"

    if-eq v8, v3, :cond_5

    if-eq v8, v2, :cond_4

    if-eq v8, v0, :cond_3

    if-eq v8, v4, :cond_2

    if-eq v8, v5, :cond_1

    packed-switch v8, :pswitch_data_0

    .line 185
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 173
    :pswitch_0
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const/16 v10, 0x6e

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    goto :goto_1

    .line 181
    :pswitch_1
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const/16 v10, 0x74

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    goto :goto_1

    .line 165
    :pswitch_2
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const/16 v10, 0x62

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    goto :goto_1

    .line 157
    :cond_1
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    goto :goto_1

    .line 161
    :cond_2
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    goto :goto_1

    .line 153
    :cond_3
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    goto :goto_1

    .line 177
    :cond_4
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const/16 v10, 0x72

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    goto :goto_1

    .line 169
    :cond_5
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const/16 v10, 0x66

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    nop

    .line 148
    .end local v8    # "ch":C
    .end local v9    # "escBs":Ljava/lang/String;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 188
    .end local v7    # "i":I
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 142
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .end local v6    # "len":I
    :cond_7
    :goto_2
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
