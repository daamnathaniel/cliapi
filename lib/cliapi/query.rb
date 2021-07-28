module Query
  extend self
  Parameters = {
    similar_meanings: [:ml, 'require that the results have a meaning related to this string value, which can be any word or sequence of words.'], 
    sound_like: [:sl, 'require that the results are pronounced similarly to this string of characters.'], 
    spelled_like: [:sp, 'require that the results are spelled similarly to this string of characters'], 
    described_by: [:rel_jja, 'Popular nouns modified by the given adjective'], 
    often_describing: [:rel_jjb, 'Popular adjectives used to modify the given noun,'], 
    synonymous_with: [:rel_syn, 'synonyms'], 
    triggered_by: [:rel_trg, 'triggers'], 
    antonyms_of: [:rel_ant, 'antonyms'], 
    kind_of: [:rel_spc, 'kind of/hypernym'], 
    more_general_than: [:rel_gen, 'more general than/hyponym'], 
    compromised_of: [:rel_com, 'comprised of/holonym'], 
    part_of: [:rel_par, 'part of/meronym'], 
    frequently_follow: [:rel_bga, 'frequent followers'], 
    frequently_preceed: [:rel_bgb, 'frequent predecessors'], 
    rhymes_with: [:rel_rhy, 'rhymes with/"perfect" rhymes"'], 
    approximately_rhymes_with: [:rel_nry, 'approximate rhymes'], 
    sound_alike: [:rel_hom, 'sound-alike/homophone'], 
    consonants_match: [:rel_cns, 'consonants match'], 
    often_follow: [:lc, 'often follow; left context'], 
    often_followed_by: [:rc, 'often followed by; right context'], 
    topics: [:topics, 'topics; additional hint to the system'] 
    }

  def parameters(constraint, variable)
    query_parameters = -> attribute { Query::Parameters[attribute.to_sym][0] }
    constraint = query_parameters.(constraint)
    { constraint => variable }
  end
end
