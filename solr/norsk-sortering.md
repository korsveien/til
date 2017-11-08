In order to sort norwegian characters correctly (e.g. aa as å) add the following fieldType

```<fieldType name="norwegianString" class="solr.TextField">
        <analyzer>
            <tokenizer class="solr.KeywordTokenizerFactory"/>
            <filter class="solr.CollationKeyFilterFactory" language="no" country="NO"/>
        </analyzer>
    </fieldType>```
