/*
* generated by Xtext
*/
grammar InternalStates;

options {
	superClass=AbstractInternalAntlrParser;
	
}

@lexer::header {
package org.eclipse.ocl.tutorial.eclipsecon2011.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.eclipse.ocl.tutorial.eclipsecon2011.parser.antlr.internal; 

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.eclipse.ocl.tutorial.eclipsecon2011.services.StatesGrammarAccess;

}

@parser::members {

 	private StatesGrammarAccess grammarAccess;
 	
    public InternalStatesParser(TokenStream input, StatesGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }
    
    @Override
    protected String getFirstRuleName() {
    	return "Module";	
   	}
   	
   	@Override
   	protected StatesGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}
}

@rulecatch { 
    catch (RecognitionException re) { 
        recover(input,re); 
        appendSkippedTokens();
    } 
}




// Entry rule entryRuleModule
entryRuleModule returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getModuleRule()); }
	 iv_ruleModule=ruleModule 
	 { $current=$iv_ruleModule.current; } 
	 EOF 
;

// Rule Module
ruleModule returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='module' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getModuleAccess().getModuleKeyword_0());
    }
(
(
		lv_name_1_0=RULE_STRING
		{
			newLeafNode(lv_name_1_0, grammarAccess.getModuleAccess().getNameSTRINGTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getModuleRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"STRING");
	    }

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getModuleAccess().getMachinesStatemachineParserRuleCall_2_0()); 
	    }
		lv_machines_2_0=ruleStatemachine		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getModuleRule());
	        }
       		add(
       			$current, 
       			"machines",
        		lv_machines_2_0, 
        		"Statemachine");
	        afterParserOrEnumRuleCall();
	    }

)
)*)
;





// Entry rule entryRuleStatemachine
entryRuleStatemachine returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getStatemachineRule()); }
	 iv_ruleStatemachine=ruleStatemachine 
	 { $current=$iv_ruleStatemachine.current; } 
	 EOF 
;

// Rule Statemachine
ruleStatemachine returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		lv_initial_0_0=	'initial' 
    {
        newLeafNode(lv_initial_0_0, grammarAccess.getStatemachineAccess().getInitialInitialKeyword_0_0());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getStatemachineRule());
	        }
       		setWithLastConsumed($current, "initial", true, "initial");
	    }

)
)?	otherlv_1='statemachine' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getStatemachineAccess().getStatemachineKeyword_1());
    }
(
(
		lv_name_2_0=RULE_ID
		{
			newLeafNode(lv_name_2_0, grammarAccess.getStatemachineAccess().getNameIDTerminalRuleCall_2_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getStatemachineRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_2_0, 
        		"ID");
	    }

)
)(	otherlv_3='value' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getStatemachineAccess().getValueKeyword_3_0());
    }
(
(
		lv_value_4_0=RULE_INT
		{
			newLeafNode(lv_value_4_0, grammarAccess.getStatemachineAccess().getValueINTTerminalRuleCall_3_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getStatemachineRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"value",
        		lv_value_4_0, 
        		"INT");
	    }

)
))?	otherlv_5='{' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getStatemachineAccess().getLeftCurlyBracketKeyword_4());
    }
	otherlv_6='events' 
    {
    	newLeafNode(otherlv_6, grammarAccess.getStatemachineAccess().getEventsKeyword_5());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getStatemachineAccess().getEventsEventParserRuleCall_6_0()); 
	    }
		lv_events_7_0=ruleEvent		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getStatemachineRule());
	        }
       		add(
       			$current, 
       			"events",
        		lv_events_7_0, 
        		"Event");
	        afterParserOrEnumRuleCall();
	    }

)
)*	otherlv_8=';' 
    {
    	newLeafNode(otherlv_8, grammarAccess.getStatemachineAccess().getSemicolonKeyword_7());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getStatemachineAccess().getStatesStateParserRuleCall_8_0()); 
	    }
		lv_states_9_0=ruleState		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getStatemachineRule());
	        }
       		add(
       			$current, 
       			"states",
        		lv_states_9_0, 
        		"State");
	        afterParserOrEnumRuleCall();
	    }

)
)*	otherlv_10='}' 
    {
    	newLeafNode(otherlv_10, grammarAccess.getStatemachineAccess().getRightCurlyBracketKeyword_9());
    }
)
;





// Entry rule entryRuleEvent
entryRuleEvent returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getEventRule()); }
	 iv_ruleEvent=ruleEvent 
	 { $current=$iv_ruleEvent.current; } 
	 EOF 
;

// Rule Event
ruleEvent returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
		lv_name_0_0=RULE_ID
		{
			newLeafNode(lv_name_0_0, grammarAccess.getEventAccess().getNameIDTerminalRuleCall_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getEventRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_0_0, 
        		"ID");
	    }

)
)
;





// Entry rule entryRuleState
entryRuleState returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getStateRule()); }
	 iv_ruleState=ruleState 
	 { $current=$iv_ruleState.current; } 
	 EOF 
;

// Rule State
ruleState returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getStateAccess().getSimpleStateParserRuleCall_0()); 
    }
    this_SimpleState_0=ruleSimpleState
    { 
        $current = $this_SimpleState_0.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getStateAccess().getCompoundStateParserRuleCall_1()); 
    }
    this_CompoundState_1=ruleCompoundState
    { 
        $current = $this_CompoundState_1.current; 
        afterParserOrEnumRuleCall();
    }
)
;





// Entry rule entryRuleSimpleState
entryRuleSimpleState returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getSimpleStateRule()); }
	 iv_ruleSimpleState=ruleSimpleState 
	 { $current=$iv_ruleSimpleState.current; } 
	 EOF 
;

// Rule SimpleState
ruleSimpleState returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		lv_initial_0_0=	'initial' 
    {
        newLeafNode(lv_initial_0_0, grammarAccess.getSimpleStateAccess().getInitialInitialKeyword_0_0());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getSimpleStateRule());
	        }
       		setWithLastConsumed($current, "initial", true, "initial");
	    }

)
)?	otherlv_1='state' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getSimpleStateAccess().getStateKeyword_1());
    }
(
(
		lv_name_2_0=RULE_ID
		{
			newLeafNode(lv_name_2_0, grammarAccess.getSimpleStateAccess().getNameIDTerminalRuleCall_2_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getSimpleStateRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_2_0, 
        		"ID");
	    }

)
)(	otherlv_3='value' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getSimpleStateAccess().getValueKeyword_3_0());
    }
(
(
		lv_value_4_0=RULE_INT
		{
			newLeafNode(lv_value_4_0, grammarAccess.getSimpleStateAccess().getValueINTTerminalRuleCall_3_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getSimpleStateRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"value",
        		lv_value_4_0, 
        		"INT");
	    }

)
))?	otherlv_5='{' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getSimpleStateAccess().getLeftCurlyBracketKeyword_4());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getSimpleStateAccess().getTransitionsTransitionParserRuleCall_5_0()); 
	    }
		lv_transitions_6_0=ruleTransition		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getSimpleStateRule());
	        }
       		add(
       			$current, 
       			"transitions",
        		lv_transitions_6_0, 
        		"Transition");
	        afterParserOrEnumRuleCall();
	    }

)
)*	otherlv_7='}' 
    {
    	newLeafNode(otherlv_7, grammarAccess.getSimpleStateAccess().getRightCurlyBracketKeyword_6());
    }
)
;





// Entry rule entryRuleCompoundState
entryRuleCompoundState returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getCompoundStateRule()); }
	 iv_ruleCompoundState=ruleCompoundState 
	 { $current=$iv_ruleCompoundState.current; } 
	 EOF 
;

// Rule CompoundState
ruleCompoundState returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='compound' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getCompoundStateAccess().getCompoundKeyword_0());
    }
(
(
		lv_initial_1_0=	'initial' 
    {
        newLeafNode(lv_initial_1_0, grammarAccess.getCompoundStateAccess().getInitialInitialKeyword_1_0());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getCompoundStateRule());
	        }
       		setWithLastConsumed($current, "initial", true, "initial");
	    }

)
)?	otherlv_2='state' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getCompoundStateAccess().getStateKeyword_2());
    }
(
(
		lv_name_3_0=RULE_ID
		{
			newLeafNode(lv_name_3_0, grammarAccess.getCompoundStateAccess().getNameIDTerminalRuleCall_3_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getCompoundStateRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_3_0, 
        		"ID");
	    }

)
)	otherlv_4='machine' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getCompoundStateAccess().getMachineKeyword_4());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getCompoundStateRule());
	        }
        }
	otherlv_5=RULE_ID
	{
		newLeafNode(otherlv_5, grammarAccess.getCompoundStateAccess().getMachineStatemachineCrossReference_5_0()); 
	}

)
)	otherlv_6='{' 
    {
    	newLeafNode(otherlv_6, grammarAccess.getCompoundStateAccess().getLeftCurlyBracketKeyword_6());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getCompoundStateAccess().getTransitionsTransitionParserRuleCall_7_0()); 
	    }
		lv_transitions_7_0=ruleTransition		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getCompoundStateRule());
	        }
       		add(
       			$current, 
       			"transitions",
        		lv_transitions_7_0, 
        		"Transition");
	        afterParserOrEnumRuleCall();
	    }

)
)*	otherlv_8='}' 
    {
    	newLeafNode(otherlv_8, grammarAccess.getCompoundStateAccess().getRightCurlyBracketKeyword_8());
    }
)
;





// Entry rule entryRuleTransition
entryRuleTransition returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getTransitionRule()); }
	 iv_ruleTransition=ruleTransition 
	 { $current=$iv_ruleTransition.current; } 
	 EOF 
;

// Rule Transition
ruleTransition returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getTransitionRule());
	        }
        }
	otherlv_0=RULE_ID
	{
		newLeafNode(otherlv_0, grammarAccess.getTransitionAccess().getEventEventCrossReference_0_0()); 
	}

)
)	otherlv_1='=>' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getTransitionAccess().getEqualsSignGreaterThanSignKeyword_1());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getTransitionRule());
	        }
        }
	otherlv_2=RULE_ID
	{
		newLeafNode(otherlv_2, grammarAccess.getTransitionAccess().getStateStateCrossReference_2_0()); 
	}

)
))
;





RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'"')))* '"'|'\'' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;

